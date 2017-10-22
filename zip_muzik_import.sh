#!/bin/bash

cd $HOME/Downloads
mkdir ./temp

for i in *.zip; do
	nozip="${i%.zip}"
	artist="${nozip%% - *}"
	album="${nozip#* - }"
	mkdir -p "./temp/$artist/$album"
	unzip "$i" -d  "./temp/$artist/$album"
done;
