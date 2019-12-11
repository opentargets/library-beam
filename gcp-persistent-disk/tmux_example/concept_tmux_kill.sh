#!/bin/bash

FILES=YOUR_PATH/loader/conc_split_*
tmux start-server
for f in $FILES
do
   windowName="conc-${f: -2}"
   echo $windowName
   tmux kill-session -t ${windowName}
done
