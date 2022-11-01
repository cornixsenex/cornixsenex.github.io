#!/bin/bash

Date="$(date +%y%m%d)"

cd /home/qwe/Media/Videos/motion
ls -lh $Date > /home/qwe/code/cornixsenex.github.io
cd /home/qwe/code/cornixsenex.github.io
Time="$(date +%R)"
git add --all
git commit -m "$Time"
git push origin main

