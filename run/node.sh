#!/bin/bash

../target/release/smly3 --base-path ~/blockchain --chain=smly3 --validator --name "`hostname`" --bootnodes=/dns/twserver.rhi.hi.is/tcp/30333/p2p/$@


