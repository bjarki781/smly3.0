# Smileycoin 3.0 — powered by Substrate 

<p align="center">
  <img src="/docs/media/smile.png">
</p>

Smileycoin 3.0 is the Substrate based successor of the Smileycoin blockchain.

## Getting Started
Head to [docs.substrate.io](https://docs.substrate.io) and follow the [installation](https://docs.substrate.io/install/) instructions.
Then try out one of the [tutorials](https://docs.substrate.io/tutorials/).
Refer to the [Docker instructions](./docker/README.md) to quickly run Smileycoin 3.0 or Subkey.

## Community & Support

Since SMLY 3.0 is tightly connected to substrate you can join the highly active and supportive community on the 
[Substrate Stack Exchange](https://substrate.stackexchange.com/) to ask questions about use and problems you run into using
this software. Please do report bugs and [issues here](https://github.com/paritytech/substrate/issues) for anything you suspect requires action in the source. 

## Contributions & Code of Conduct

Please follow the contributions guidelines as outlined in [`docs/CONTRIBUTING.md`](docs/CONTRIBUTING.md).
In all communications and contributions, this project follows the [Contributor Covenant Code of Conduct](docs/CODE_OF_CONDUCT.md).

## Security

The security policy and procedures can be found in [`docs/SECURITY.md`](docs/SECURITY.md).

## License

- Substrate Primitives (`sp-*`), Frame (`frame-*`) and the pallets (`pallets-*`), binaries (`/bin`) and all other utilities are licensed under [Apache 2.0](LICENSE-APACHE2).
- Substrate Client (`/client/*` / `sc-*`) is licensed under [GPL v3.0 with a classpath linking exception](LICENSE-GPL3).

The reason for the split-licensing is to ensure that for the vast majority of teams using Substrate to create feature-chains, such as SMLY 3.0, all changes can be made entirely in Apache2-licensed code, allowing teams full freedom over what and how they release and giving licensing clarity to commercial teams.

In the interests of the community, any deeper improvements made to Substrate's core logic (e.g. Substrate's internal consensus, crypto or database code) are required to be contributed back so everyone can benefit.
