## Improving Deep Lesion Detection Using 3D Contextual and Spatial Attention
This repository is the code for the paper "Improving Deep Lesion Detection Using 3D Contextual and Spatial Attention", MICCAI 2019. 
The code is extended from Ke Yan's implementation of 3DCE [2] (https://github.com/rsummers11/CADLab/tree/master/lesion_detector_3DCE).
The dual attention design is implemented in rcnn/symbol/symbol_vgg.py to improve the accuracy of lesion detection in 3D CT images. 

* File structure:
    * ./data/DeepLesion - dataset folder
    * ./exp - Experiment configs and the output files
    * ./imagenet_models - pretrained imagenet weights ([download](https://drive.google.com/file/d/1gBT3Mm7xnhv7Jc31B9Uj3FRw056sGLxr/view?usp=sharing))
    * ./rcnn - core codes
* Data preprocessing - Refer to the original 3DCE repo: 
    * Load data split and annotations from DL_info.csv (see dataset/DeepLesion.py)
    * Load images from 16-bit png files (see fio/load_ct_img.py)
    * Linearly interpolate intermediate slices according to the slice interval
    * Do intensity windowing
    * Normalize pixel spacing
    * Clip the black borders
* Attention setting - Attention settings can be changed in exp/$YOUR_EXP_NAME/config.yml:
    * ATT_TEMP_SPATIAL: 3 #Spatial attention temperature, if -1: No spatial attention
    * ATT_TEMP_VERTICAL: 2 #Vertical(Contextual) attention temperature, if -1: No vertical(contextual) attention

#### Requirements
* MXNet 1.4
* Python 2.7
* Before running, run "make" to compile binary files
* To train the universal lesion detector, download the DeepLesion dataset [3]



#### References
1. Q. Tao, Z. Ge, J. Cai, J. Yin and S. See, "Improving Deep Lesion Detection Using 3D Contextual and Spatial Attention", MICCAI 2019 ([arXiv](https://arxiv.org/pdf/1907.04052.pdf))
1. K. Yan, M. Bagheri, and R. M. Summers, “3D Context Enhanced Region-based Convolutional Neural Network for End-to-End Lesion Detection,” in MICCAI, 2018 ([arXiv](https://arxiv.org/abs/1806.09648))
1. The DeepLesion dataset. ([download](https://nihcc.box.com/v/DeepLesion))


![](images/framework.png)
