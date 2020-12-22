#!/bin/sh

sudo apt update
sudo apt -y upgrade
sudo apt install -y build-essentials
sudo apt install -y libjpeg-dev zlib1g-dev
sudo apt install -y python3-pip libssl-dev libffi-dev
