#!/bin/sh

echo "Running: setup-conda.sh"
echo "Current directory:" $(pwd)

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

. ~/miniconda3/bin/activate

echo "----------"
echo "Conda version:"
conda --version
echo "----------"

echo "Done: setup-conda.sh"
