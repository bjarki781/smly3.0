#!/bin/bash -x

../target/release/smly3 key insert --base-path ~/blockchain \
  --chain raw_spec.json \
  --scheme Sr25519 \
  --suri "$1" \
  --key-type babe

../target/release/smly3 key insert --base-path ~/blockchain \
  --chain raw_spec.json \
  --scheme Ed25519 \
  --suri "$1" \
  --key-type gran

