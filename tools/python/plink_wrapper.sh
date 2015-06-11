#!/bin/bash
echo $@
INTERPRETER=$1
shift
exec $INTERPRETER tools/python/plink.py --python-binary "/usr/bin/$INTERPRETER -ESs" $@
