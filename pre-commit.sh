#!/bin/bash
if
grep -rnw 'snapsell' --include=\*.py -e 'import pdb'
then
exit 1
fi
if
grep -rnw 'snapsell' --include=\*.py -e 'set_trace'
then
exit 1
fi
flake8 snapsell