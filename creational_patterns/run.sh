#!/bin/bash
# small tip: to shorten the linux command prompt, do 
# PS1='\[\033[01;34m\][\W]\[\033[00m\]$ ' command.

docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker build . -t practice:latest
clear
echo "----------------------------Output-----------------------------"
docker run --rm -it practice:latest
echo "---------------------------------------------------------------"
