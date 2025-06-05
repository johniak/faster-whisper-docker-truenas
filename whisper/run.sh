#!/usr/bin/env bash
env
python3 -m wyoming_faster_whisper \
    --uri 'tcp://0.0.0.0:10300' \
    --data-dir /data \
    --download-dir /data \
    --model $MODEL \
    --language $LANGUAGE \
    --device $DEVICE
