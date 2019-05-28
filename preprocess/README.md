# Preprocess

This directory contains the preprocess for origin Spider dataset

#### Data preparation

* Download [Spider Data](https://drive.google.com/uc?export=download&id=11icoH_EA-NYb0OrPTdehRWm_d7-DIzWX) by your own. Download  and put `train.json`, `dev.json` and 
`tables.json` under `./data/` directory 
* Download [ConceptNet](https://drive.google.com/open?id=1cCOmsI8fG-euIOSGgFrGnKPoZLg2PcDN) and put it in `./preprocess/conceptNet/` directory

#### Generating Train Data

`sh run_me.sh ../data/train.json ../data/tables.json`

#### Generating Dev Data

`sh run_me.sh ../data/dev.json ../data/tables.json`

The script first performs schema linking over the dataset and schema and then generate SemQL base on the SQL query. 
Note that some From causes(self-join, subquery in From cause) and GroupBy causes(not groupby the primary key) can not be inferred from SemQL, we exclude them from our [processed dataset](https://drive.google.com/open?id=1YFV1GoLivOMlmunKW0nkzefKULO4wtrn).
