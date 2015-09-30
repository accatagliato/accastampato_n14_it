#!/bin/bash

rm articles/*/*/medres_*
rm graphics/medres_*

for directory in articles/*/*/
do
echo "cd $directory"
cd $directory
    for file in *.png
    do
	echo "ln -s $file medres_$file"
	ln -s "$file" "medres_$file"
    done
    
    for file in *.pdf
    do
	echo "ln -s $file medres_$file"
	ln -s "$file" "medres_$file"
    done

    for file in *.jpg
    do
	echo "ln -s $file medres_$file"
	ln -s "$file" "medres_$file"
    done

echo "cd ../../../"
cd ../../../
done

cd graphics
for file in *.png
do
    echo "ln -s $file medres_$file"
    ln -s "$file" "medres_$file"
done

for file in *.pdf
do
    echo "ln -s $file medres_$file"
    ln -s "$file" "medres_$file"
done

for file in *.jpg
do
    echo "ln -s $file medres_$file"
    ln -s "$file" "medres_$file"
done

echo "cd ../"
cd ../
