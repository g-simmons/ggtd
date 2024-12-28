#!/bin/bash

scripts_dir=$(git rev-parse --git-dir)/../ggtd_scripts/


# warn the user that this will overwrite any existing issue scripts
echo "This will overwrite existing scripts in $scripts_dir if they match ggtd script names."
read -p "Are you sure you want to continue? (y/n) " answer
if [ "$answer" != "y" ]; then
    echo "Aborting."
    exit 1
fi

# create the issue template directory if it doesn't exist
mkdir -p $scripts_dir

# link all the issue templates from ggtd-dir
for file in $(ls -d $GGTD_DIR/issue_scripts/*); do
    ln -f $file $scripts_dir
done

