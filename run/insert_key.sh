#!/bin/bash -x

../target/release/smly3 key insert --base-path ~/blockchain \
  --chain=smly3 \
  --scheme Sr25519 \
  --suri "$*" \
  --key-type babe

../target/release/smly3 key insert --base-path ~/blockchain \
  --chain=smly3 \
  --scheme Ed25519 \
  --suri "$*" \
  --key-type gran

