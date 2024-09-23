tport=53907
ngpu=2
ROOT=.

# CUDA_VISIBLE_DEVICES=4,5,
python -m torch.distributed.launch \
    --nproc_per_node=${ngpu} \
    --node_rank=0 \
    --master_port=${tport} \
    $ROOT/train_semi.py \
    --config=$ROOT/exps/zrun_vocs/r50_voc_semi662/config_semi.yaml --seed 2 --port ${tport}

# ---- -----

    # --config=$ROOT/exps/zrun_vocs/voc_semi662/config_semi.yaml --seed 2 --port ${tport}
    # --config=$ROOT/exps/zrun_vocs/voc_semi1323/config_semi.yaml --seed 2 --port ${tport}
    # --config=$ROOT/exps/zrun_vocs/voc_semi2646/config_semi.yaml --seed 2 --port ${tport}

    # --config=$ROOT/exps/zrun_vocs/r50_voc_semi662/config_semi.yaml --seed 2 --port ${tport}
    # --config=$ROOT/exps/zrun_vocs/r50_voc_semi1323/config_semi.yaml --seed 2 --port ${tport}
    # --config=$ROOT/exps/zrun_vocs/r50_voc_semi2646/config_semi.yaml --seed 2 --port ${tport}


