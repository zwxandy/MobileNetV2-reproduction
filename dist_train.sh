#!/bin/bash
# Copyright Ross Wightman (https://github.com/rwightman)

NUM_PROC=$1
shift
python3 -m torch.distributed.launch --nproc_per_node=$NUM_PROC --master_port 29601 train.py "$@"

# manually set master_port to avoid conflict
