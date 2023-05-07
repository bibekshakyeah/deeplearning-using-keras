#!/bin/bash
docker build -t dp-im .
docker run --gpus all -it --rm -p 8888:8888 -v /home/bibek/avo-workspace/rnd/deeplearning:/tf  dp-im