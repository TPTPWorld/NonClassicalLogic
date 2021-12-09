import itertools
import argparse
import logging
import sys
from pathlib import Path
from typing import Iterable

logging.basicConfig(level=logging.NOTSET)

all_constants = (
    "$rigid",
    "$flexible",
)
all_quantification = (
    "$constant",
    "$varying",
    "$cumulative",
    "$decreasing",
)
all_consequence = (
    "$local",
    "$global",
)
all_modalities = (
    "$modal_system_K",
    "$modal_system_T",
    "$modal_system_D",
    "$modal_system_S4",
    "$modal_system_S5",
)

class Semantics:
    default_template = \
"""thf({id},logic,(
    $modal == [ 
        $constants == {constants},
        $quantification == {quantification},
        $consequence == {consequence},
        $modalities == {modalities}
]))."""
    def __init__(self, constants, quantification, consequence, modalities):
        self.constants = constants
        self.quantification = quantification
        self.consequence = consequence
        self.modalities = modalities

    def name(self) -> str:
        return self.constants.replace("$","") + "_" + self.quantification.replace("$","") + "_" + self.consequence.replace("$","") + "_" + self.modalities.replace("$","")

    def specification(self) -> str:
        return Semantics.default_template.format(id=self.name(), constants=self.constants, quantification=self.quantification, consequence=self.consequence, modalities=self.modalities)

def createMultipleSemantics(constants:Iterable[str]=all_constants, quantification:Iterable[str]=all_quantification, consequence:Iterable[str]=all_consequence, modalities:Iterable[str]=all_modalities):
    ret = []
    for e1,e2,e3,e4 in itertools.product(constants, quantification, consequence, modalities):
        ret.append(Semantics(constants=e1, quantification=e2, consequence=e3, modalities=e4))
    return ret

def createProblemWithSemantics(semantics:Semantics, problem:str):
    return semantics.specification() + "\n\n" + problem

def stdoutProblem(semantics:Semantics, problem:str, filename:str):
    print("%--------------------------------------------------------")
    print("%---Problem: " + filename + " with semantics " + semantics.name() + "\n")
    print(createProblemWithSemantics(semantics=semantics, problem=problem))

def outProblem(problemPath:Path, relativeProblemPath:Path, outDir:Path, constants:Iterable[str]=all_constants, quantification:Iterable[str]=all_quantification, consequence:Iterable[str]=all_consequence, modalities:Iterable[str]=all_modalities):
    semanticsList = createMultipleSemantics(constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
    problem = problemPath.read_text()
    for s in semanticsList: # s[0] is the id of the logic statement, s[1] the problem filename
        if outDir: # write to disk
            writeBasePath = (outDir / relativeProblemPath).parent
            writePath = writeBasePath / (relativeProblemPath.stem + "_" + s.name() + ".p")
            writePath.parent.mkdir(parents=True, exist_ok=True)
            writePath.write_text(createProblemWithSemantics(s, problem))
        else: # write to stdout
            stdoutProblem(semantics=s, problem=problem, filename=str(relativeProblemPath))

def outDirectory(inDir:Path, outDir:Path, constants:Iterable[str]=all_constants, quantification:Iterable[str]=all_quantification, consequence:Iterable[str]=all_consequence, modalities:Iterable[str]=all_modalities):
    for p in inDir.rglob("*.p"):
        outProblem(problemPath=p, relativeProblemPath=p.relative_to(inDir), outDir=outDir, constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("inPath", help="input path (file or directory)")
    parser.add_argument("--outPath", help="output path (file if inPath is a file and only on semantics specification is chosen. Otherwise directory)")
    parser.add_argument("--constants", help="comma-separated values for constants")
    parser.add_argument("--quantification", help="comma-separated values for quantification")
    parser.add_argument("--consequence", help="comma-separated values for consequence")
    parser.add_argument("--modalities", help="comma-separated values for modalities")
    args = parser.parse_args()
    return args

def main():
    args = parse_args()
    inPath = Path(args.inPath)
    outPath = None
    constants = all_constants
    quantification = all_quantification
    consequence = all_consequence
    modalities = all_modalities
    if args.outPath:
        outPath = Path(args.outPath)
    if args.constants:
        constants = args.constants.split(",")
        if len(constants) < 1:
            logging.error("Too few constants options: \"" + args.constants + "\"")
            sys.exit(1)
    if args.quantification:
        quantification = args.quantification.split(",")
        if len(quantification) < 1:
            logging.error("Too few quantification options: \"" + args.quantification + "\"")
            sys.exit(1)
    if args.consequence:
        consequence = args.consequence.split(",")
        if len(consequence) < 1:
            logging.error("Too few consequence options: \"" + args.consequence + "\"")
            sys.exit(1)
    if args.modalities:
        modalities = args.modalities.split(",")
        if len(modalities) < 1:
            logging.error("Too few modalities options: \"" + args.modalities + "\"")
            sys.exit(1)
    logging.info("Semantics:")
    logging.info("Constants: " + str(constants))
    logging.info("Quantification: " + str(quantification))
    logging.info("Consequence: " + str(consequence))
    logging.info("Modalities: " + str(modalities))
    # input: one file
    # output: one file (one semantic)
    if inPath.is_file() and len(constants) == 1 and len(quantification) == 1 and len(consequence) == 1 and len(modalities) == 1:
        logging.info("Processing one file: " + str(inPath) + " with one semantics specification.")
        semanticsList = createMultipleSemantics(constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
        semantics = semanticsList[0]
        problem = inPath.read_text()
        if outPath:
            outPath.write_text(createProblemWithSemantics(semantics=semantics, problem=problem))
        else:
            stdoutProblem(semantics=semantics, problem=problem, filename=inPath.name)
    # input one file
    # output: multiple problems (multiple semantics)
    elif inPath.is_file() and (len(constants) > 1 or len(quantification) > 1 or len(consequence) > 1 or len(modalities) > 1):
        logging.info("Processing one file: " + str(inPath) + " with multiple semantics specification.")
        outProblem(problemPath=inPath, relativeProblemPath=Path(inPath.name), outDir=outPath, constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
    # input: directory
    # output: directory
    elif inPath.is_dir():
        logging.info("Processing directory " + str(inPath) + ".")
        outDirectory(inDir=inPath, outDir=outPath, constants=constants, quantification=quantification, consequence=consequence, modalities=modalities)
    else:
        logging.error("Oops, something went wrong.")
        sys.exit(1)

if __name__ == "__main__":
    main()
