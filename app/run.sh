#!/bin/sh

cd /workspace/app

if [ ! -d ./.conda_env ]; then
  . ~/miniconda3/bin/activate
  conda create --prefix ./.conda_env python=3.10 -y
fi

conda activate ./.conda_env/

pip install torch torchvision torchaudio

python ./main.py
