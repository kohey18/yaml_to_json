#!/bin/sh



for compose in *.yml
do
    name=$(basename $compose .yml)
    python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' < $name.yml > $HOME/ecs/$name.json
done
