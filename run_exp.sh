#!/usr/bin/env bash
python rcnn/tools/train.py --exp_folder exp/3DCE_7_image_3_slice_dual_att
python rcnn/tools/test.py --exp_folder exp/3DCE_7_image_3_slice_dual_att