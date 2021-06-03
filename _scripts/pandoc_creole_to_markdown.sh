#!/bin/sh -ex
INPUT_DIR=$WORK/Vlk-wiki
OUTPUT_DIR=$WORK/www-talansoft-gitlab-pub-wiki/Vlk/

cd $INPUT_DIR
WIKI_FILES=`find . -type f -name '*.wiki'`

for f in $WIKI_FILES
do
    MD_FILE="$OUTPUT_DIR/${f%.wiki}.md"
    MD_DIR=`dirname "$MD_FILE"`
    mkdir -p "$MD_DIR"
    pandoc "$f" --from creole --to gfm --standalone -o "${MD_FILE}"
done
