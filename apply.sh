#!/bin/bash

git checkout 7e56cbb94182a2fdab110cf5bfeded8fd1d44d30

repo_dir=$PWD
firmware_dir=/lib/firmware/ath10k/QCA6174

cd $firmware_dir
sudo tar cf hw3.0.tar.gz hw3.0/
sudo rm -rf hw3.0/*
sudo cp $repo_dir/QCA6174/hw3.0/board-2.bin hw3.0/board.bin
sudo cp $repo_dir/QCA6174/hw3.0/firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1 hw3.0/firmware-4.bin

cd $repo_dir
git checkout master


