# MobileNetV2-reproduction on ImageNet

# How to run

## Training

[timm](https://github.com/rwightman/pytorch-image-models) is recommended for image classification training 
and required for the training script provided in this repository:
### Distributed training
```shell
./dist_classification.sh $NUM_GPUS -c $CONFIG_FILE /path/to/dataset
```

You can use our training configurations provided in `configs/`:
```shell
./dist_classification.sh 8 -c configs/imagenet.yml --model cct_14_7x2_224 /path/to/ImageNet
./dist_train.sh 2 -c configs/datasets/tiny_imagenet.yml --model vit_7_4_32 /home/wenxuanzeng/data/tiny-imagenet-200
```

### Non-distributed training
```shell
CUDA_VISIBLE_DEVICES=3
python train.py -c configs/datasets/imagenet.yml --model mobilenetv2_100 /home/wenxuanzeng/data/imagenet/
```

### Models and config files
We've updated this repository and moved the previous training script and the checkpoints associated 
with it to `examples/`. The new training script here is just the `timm` training script. We've provided
the checkpoints associated with it in the next section, and the hyperparameters are all provided in
`configs/pretrained` for models trained from scratch, and `configs/finetuned` for fine-tuned models.


# Citation
```bibtex
@article{hassani2021escaping,
	title        = {Escaping the Big Data Paradigm with Compact Transformers},
	author       = {Ali Hassani and Steven Walton and Nikhil Shah and Abulikemu Abuduweili and Jiachen Li and Humphrey Shi},
	year         = 2021,
	url          = {https://arxiv.org/abs/2104.05704},
	eprint       = {2104.05704},
	archiveprefix = {arXiv},
	primaryclass = {cs.CV}
}
```
