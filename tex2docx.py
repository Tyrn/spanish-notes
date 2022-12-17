#!/usr/bin/env python
""" Converts a tex file to a file specified by extension.

Command line arguments:
    target extension
    source file name
Example:
    __file__ docx foxtrot.tex

"""
import sys
import subprocess
from pathlib import Path

ARGLIST = list(sys.argv)
ARGLIST.pop(0)

if len(ARGLIST) == 2:
    SUFFIX = "." + ARGLIST[-2]
    SRC = Path(ARGLIST[-1])
    DST = SRC.with_suffix("").with_suffix(SUFFIX)
    CMD = ["pandoc", SRC.__str__(), "-so", DST.__str__()]
    PROCESS = subprocess.run(CMD, stdout=subprocess.PIPE, check=True, text=True)
    print(PROCESS)
else:
    print(f"{__file__} requires 2 args: target extension and source name.")
