# DRANet

> "Augmentation Matters: Dual-threshold Guided Reliability Aware Network for Semi-Supervised Image Semantic Segmentation".



## Running DRANet

### Prepare datasets

Please download the Pascal and Cityscapes, and set up the path to them properly in the configuration files.

- Pascal: [JPEGImages](http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar) | [SegmentationClass](https://drive.google.com/file/d/1ikrDlsai5QSf2GiSUR3f8PZUzyTubcuF/view?usp=sharing)
- Cityscapes: [leftImg8bit](https://www.cityscapes-dataset.com/file-handling/?packageID=3) | [gtFine](https://drive.google.com/file/d/1E_27g9tuHm6baBqcA7jct_jqcGA89QPm/view?usp=sharing)

- Splitall: included.

Here is our adopted way，
```
├── ./data
    ├── splitsall
    	├── cityscapes
    	├── pascal
    ├── VOC2012
    	├── JPEGImages
    	└── SegmentationClassAug
    └── cityscapes
        ├── gtFine
    	└── leftImg8bit
```



### Prepare pre-trained encoder

Please download the pretrained models, and set up the path to these models properly in the file of `config_xxx.yaml` .

~~[ResNet-50](https://drive.google.com/file/d/1AuyE_rCUSwDpjMJHMPklXeKdZpdH1-6F/view?usp=sharing) | [ResNet-101](https://drive.google.com/file/d/13jNMOEYkqBC3CimlSSw-sWRHVZEeROmK/view?usp=sharing)~~

[ResNet-50](https://drive.google.com/file/d/1mqUrqFvTQ0k5QEotk4oiOFyP6B9dVZXS/view?usp=sharing) | [ResNet-101](https://drive.google.com/file/d/1Rx0legsMolCWENpfvE2jUScT3ogalMO8/view?usp=sharing) 

Here is our adopted way，

```
├── ./pretrained
    ├── resnet50.pth
    └── resnet101.pth
```



### Prepare running Envs

Nothing special
- python: 3.7.13
- pytorch: 1.7.1
- cuda11.0.221_cudnn8.0.5_0
- torchvision:  0.8.2 



### Ready to Run

Basically, you are recommanded to config the experimental runnings in a ".yaml" file firstly. 
We include various configuration files under the directory of "exps".


```bash
# 1) configure your yaml file in a running script
vim ./scripts/run_abls_citys.sh

# 2) run directly
sh ./scripts/run_abls_citys.sh

```

