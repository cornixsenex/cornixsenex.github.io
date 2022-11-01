#!/bin/bash

Date="$(date +%y%m%d)"

cd /home/qwe/Media/Videos/motion
ls -lrht $Date > /home/qwe/code/cornixsenex.github.io/index.html
cd /home/qwe/code/cornixsenex.github.io
Time="$(date +%R)"
git add --all
git commit -m "$Time"
git push origin main

