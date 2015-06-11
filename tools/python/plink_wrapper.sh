#!/bin/bash
echo $@
INTERPRETER=$1
shift
if [[ $INTERPRETER == "python2" ]]; then
    PLINK=plink.py
else
    PLINK=plink3.py
fi
exec $INTERPRETER tools/python/$PLINK --python-binary "/usr/bin/$INTERPRETER -ESs" $@
