#!/bin/bash

issue_template_dir=$(git rev-parse --git-dir)/../.github/ISSUE_TEMPLATE/


# warn the user that this will overwrite any existing issue templates
echo "This will overwrite existing issue templates in $issue_template_dir if they match ggtd template names."
read -p "Are you sure you want to continue? (y/n) " answer
if [ "$answer" != "y" ]; then
    echo "Aborting."
    exit 1
fi

# create the issue template directory if it doesn't exist
mkdir -p $issue_template_dir

# link all the issue templates from ggtd-dir
for file in $(ls -d $GGTD_DIR/issue_templates/*); do
    ln -f $file $issue_template_dir
done
