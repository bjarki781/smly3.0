#!/bin/bash

cargo run --release -- --base-path ~/blockchain --chain raw_spec.json  --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" --validator --name "`hostname`" --bootnodes=/dns/twserver.rhi.hi.is/tcp/30333/p2p/$@


