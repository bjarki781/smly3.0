#!/bin/bash

../target/release/smly3 --base-path ~/blockchain-access --chain raw_spec.json --rpc-port 9945 --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" --rpc-cors=all --name "`hostname`-access" $@
