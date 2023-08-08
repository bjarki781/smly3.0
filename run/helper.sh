#!/bin/bash

../target/release/smly3_0 --base-path ~/blockchain --chain newrawspec.json  --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" --validator --name "`hostname`" --bootnodes=/ip4/130.208.71.224/tcp/30334/p2p/$@

