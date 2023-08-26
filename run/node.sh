#!/bin/bash

cargo run --release -- --base-path ~/blockchain --chain raw_spec.json --validator --name "`hostname`" --bootnodes=/dns/twserver.rhi.hi.is/tcp/30333/p2p/$@


