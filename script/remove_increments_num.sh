#!/bin/bash

SOUND_DIR=$(cd $(dirname $0); cd ../sound/; pwd)

for file in $(find ${SOUND_DIR} -maxdepth 1 -type f -name "*.wav"); do
    renamed=$(echo $file | sed -e 's/[0-9][0-9][0-9]_//g')
    mv $file $renamed
done
