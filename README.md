# IRNet
Code for our ACL'19 accepted paper: [Towards Complex Text-to-SQL in Cross-Domain Database with Intermediate Representation](https://arxiv.org/pdf/1905.08205.pdf)

<p align='center'>
  <img src='https://zhanzecheng.github.io/architecture.png' width="100%"/>
</p>

## Citation

If you use IRNet, please cite the following work.
> Jiaqi Guo, Zecheng Zhan, Yan Gao, Yan Xiao, Jian-Guang LOU, Ting Liu and Dongmei Zhang. 2019. Towards Complex Text-to-SQL in Cross-Domain Database with Intermediate Representation. In ACL.


```
@article{GuoIRNet2019,
author={Jiaqi Guo and Zecheng Zhan and Yan Gao and Yan Xiao and Jian-Guang Lou and Ting Liu and Dongmei Zhang},
title={Towards Complex Text-to-SQL in Cross-Domain Database with Intermediate Representation},
journal={arXiv preprint arXiv:1905.08205},
year={2019},
note={version 1}
}
```

## Environment Setup

* `Python3.6`
* `Pytorch 0.4.0` or higher

Install Python dependency: `pip install -r requirements.txt`

## Running Code

### Data preparation


* Download [Glove Embedding](https://nlp.stanford.edu/data/wordvecs/glove.42B.300d.zip) and put `glove.42B.300d` under `data/` directory
* Download [Pretrained IRNet](https://drive.google.com/open?id=1VoV28fneYss8HaZmoThGlvYU3A-aK31q) and put `
IRNet_pretrained.model` under `saved_model/` directory
* Download preprocessed train/dev datasets from [here](https://drive.google.com/open?id=1YFV1GoLivOMlmunKW0nkzefKULO4wtrn) and put `train.json`, `dev.json` and 
`tables.json` under `data/` directory

#### Generating train/dev data by yourself
You could process the origin [Spider Data](https://drive.google.com/uc?export=download&id=11icoH_EA-NYb0OrPTdehRWm_d7-DIzWX) by your own. Download  and put `train.json`, `dev.json` and 
`tables.json` under `data/` directory and follow the instruction on `preprocess/`

### Training

Run `train.sh` to train IRNet.

### Testing

Run `eval.sh` to eval IRNet.

### Evaluation

You could follow the general evaluation process in [Spider Page](https://github.com/taoyds/spider)


## Results
| **Model**   | Dev <br /> Exact Set Match <br />Accuracy | Test<br /> Exact Set Match <br />Accuracy |
| ----------- | ------------------------------------- | -------------------------------------- |
| IRNet    | 53.2                        | 46.7                      |
| IRNet+Bert(base) | 61.9                          | **54.7**                      |


## Thanks
We would like to thank [Tao Yu](https://taoyds.github.io/) and [Bo Pang](https://www.linkedin.com/in/bo-pang/) for running evaluations on our submitted models.
We are also grateful to the flexible semantic parser [TranX](https://github.com/pcyin/tranX) that inspires our works.
