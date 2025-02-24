# Minimal Kakarot Tester

All tests will be runned in this file, which is the minimal Foundry version. The RPC for Kakarot must be started from the repository kakarot-rpc. Anvil must be started from this repo: kakarot-alpha.

## Documentation

### Installation and instancing RPC

https://kakarotlabs.notion.site/Run-Kakarot-Locally-using-Docker-33d3b0b12be641eea563b4fb8eb3d33e

### Official GitHub repo

https://github.com/kkrt-labs

## Usage

### Katana RPC

Must have Docker and kakarot-rpc installed

```shell
$ make katana-rpc-up
```

### Anvil RPC

In this repository main folder start Anvil with

```shell
$ anvil
```

### Run scripts

For Anvil use http://localhost:8545

```shell
$ forge script script/Counter.s.sol --legacy --compute-units-per-second 4000 --slow --fork-url http://localhost:8545 -vvvvv

```

For Katana use http://localhost:3030

```shell
$ forge script script/Counter.s.sol --legacy --compute-units-per-second 4000 --slow --fork-url http://localhost:3030 -vvvvv

```

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
