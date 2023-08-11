#!/bin/bash

twserver_ip=`dig +short twserver.rhi.hi.is`

cargo run --release -- --base-path ~/blockchain --chain raw_spec.json  --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" --validator --name "`hostname`" --bootnodes=/ip4/$twserver_ip/tcp/30334/p2p/$@


