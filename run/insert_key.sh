#!/bin/bash -x

../target/release/smly3_0 key insert --base-path ~/blockchain \
  --chain spec.json \
  --scheme Sr25519 \
  --suri "$1" \
  --key-type aura

../target/release/smly3_0 key insert --base-path ~/blockchain \
  --chain spec.json \
  --scheme Ed25519 \
  --suri "$1" \
  --key-type gran

