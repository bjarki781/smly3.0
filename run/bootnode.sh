#!/bin/bash

../target/release/smly3 --base-path ~/blockchain --chain=smly3  --validator --name "bootnode-`hostname`" --unsafe-rpc-external --rpc-cors=all $@

