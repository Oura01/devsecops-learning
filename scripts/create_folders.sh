#!/bin/bash

for i in {1..5}
do
  mkdir -p "folder$i"
  echo "This is file $i" > "folder$i/file$i.txt"
done

echo "Folders created:"
ls -la

echo "Folder structure:"
tree
