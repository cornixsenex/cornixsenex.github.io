#!/bin/bash

Date="$(date +%y%m%d)"
LastVidCount=$(< /home/qwe/code/cornixsenex.github.io/vidcount.txt)
NewVidCount=$(ls -lrht /home/qwe/Media/Videos/motion/$Date | wc | awk 'NR==1{print $1}')

if [ $LastVidCount == $NewVidCount ]
then
	echo "$NewVidCount" > /home/qwe/code/cornixsenex.github.io/vidcount.txt
else
	echo "$NewVidCount" > /home/qwe/code/cornixsenex.github.io/vidcount.txt
	cd /home/qwe/Media/Videos/motion
	ls -lrht $Date > /home/qwe/code/cornixsenex.github.io/index.html
	cd /home/qwe/code/cornixsenex.github.io
	Time="$(date +%R)"
	git add --all
	git commit -m "$Time"
	git push origin main
fi


