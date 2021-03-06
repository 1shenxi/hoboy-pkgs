#!/bin/bash

echo `pwd`

workDir=src

# clean `lib`
rm -rf lib/ min/

# build content
## 1. build scss by copy
cp -r src/ lib/

## 2. build css by no-compress
dart-sass src/:lib/

## 3. build css by compressed
for file in `ls $workDir`; do
  filename=${file%.*}
  minName="$filename.min.css"
  `dart-sass $workDir/$file:lib/$minName -s compressed`
done
