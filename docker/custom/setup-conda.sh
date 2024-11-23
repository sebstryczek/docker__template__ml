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

conda install pytorch torchvision torchaudio pytorch-cuda=12.4 -c pytorch -c nvidia -y

echo "----------"
echo "Is CUDA available:"
python -c 'import torch; print(torch.cuda.is_available())'
echo "----------"

echo "Done: setup-conda.sh"
