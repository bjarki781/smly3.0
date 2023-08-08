#!/bin/bash

../target/release/smly3_0 --base-path ~/blockchain-access --chain newrawspec.json --port 30333 --ws-port 9944 --rpc-port 9934 --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" --rpc-cors=all --name "`hostname`-access" $@
