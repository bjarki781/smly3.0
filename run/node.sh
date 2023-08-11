#!/bin/bash

twserver_ip=`dig +short twserver.rhi.hi.is`

../target/release/smly3 --base-path ~/blockchain --chain raw_spec.json  --telemetry-url "wss://telemetry.polkadot.io/submit/ 0" --validator --name "`hostname`" --bootnodes=/ip4/$twserver_ip/tcp/30334/p2p/$@


