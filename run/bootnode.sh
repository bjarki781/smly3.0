#!/bin/bash

cargo run --release -- --base-path ~/blockchain --chain raw_spec.json --validator --name "bootnode-`hostname`" --unsafe-rpc-external --rpc-cors=all $@

