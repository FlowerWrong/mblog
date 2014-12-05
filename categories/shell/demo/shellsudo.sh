#!/bin/bash

USER=`whoami`
echo "${USER} is online."
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt-get autoclean
