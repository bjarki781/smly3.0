#!/bin/bash -x

function subkey() {
    cargo run --release --package subkey -- "$@"
}

# generate keys
rawaura_nuc=`subkey generate`
rawaura_sveit=`subkey generate`
rawaura_tw=`subkey generate`

# keep private phrases
privnuc=`echo "$rawaura_nuc" | head -1 | sed -s 's/Secret phrase:\s*//'`
privsveit=`echo "$rawaura_sveit" | head -1 | sed -s 's/Secret phrase:\s*//'`
privtw=`echo "$rawaura_tw" | head -1 | sed -s 's/Secret phrase:\s*//'`

# save them locally
echo "nuc private passphrase" > ~/privkeys
echo $privnuc >> ~/privkeys
echo "sveit private passphrase" >> ~/privkeys
echo $privsveit >> ~/privkeys
echo "tw private passphrase" >> ~/privkeys
echo $privtw >> ~/privkeys

# get aura pubkey
export auranuc=`echo "$rawaura_nuc" | tail -1 | sed -s 's/\s*SS58 Address:\s*//'`
export aurasveit=`echo "$rawaura_sveit" | tail -1 | sed -s 's/\s*SS58 Address:\s*//'`
export auratw=`echo "$rawaura_tw" | tail -1 | sed -s 's/\s*SS58 Address:\s*//'`

rawgran_nuc=`subkey inspect --scheme Ed25519 "$privnuc"`
rawgran_sveit=`subkey inspect --scheme Ed25519 "$privsveit"`
rawgran_tw=`subkey inspect --scheme Ed25519 "$privtw"`

export grannuc=`echo "$rawgran_nuc" | tail -1 | sed -s 's/\s*SS58 Address:\s*//'`
export gransveit=`echo "$rawgran_sveit" | tail -1 | sed -s 's/\s*SS58 Address:\s*//'`
export grantw=`echo "$rawgran_tw" | tail -1 | sed -s 's/\s*SS58 Address:\s*//'`

echo "Aura public key of NUC" > pub_keys
echo $auranuc >> pub_keys
echo "Grandpa public key of NUC" >> pub_keys
echo $grannuc >> pub_keys
echo "Aura public key of Sveit" >> pub_keys
echo $aurasveit >> pub_keys
echo "Granpa public key of Sveit" >> pub_keys
echo $gransveit >> pub_keys
echo "Aura public key of TW" >> pub_keys
echo $auratw >> pub_keys
echo "Granpa public key of TW" >> pub_keys
echo $grantw >> pub_keys

# create spec from keys
envsubst < template_spec.json > spec.json

# build the raw spec
../target/release/smly3 build-spec --chain spec.json --raw > raw_spec.json

