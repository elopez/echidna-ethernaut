# Ethernaut CTF with Echidna

This repository contains my attempts at solving the Ethernaut CTF levels
(solidity-05 version) using [Echidna](https://github.com/crytic/echidna/), a
Ethereum smart contract fuzzer. I decided to give this a try after seeing
crytic/echidna#433 on the Echidna issue tracker. The idea behind this is to
learn more about Solidity and Ethereum contracts, to get first hand experience
using Echidna, and to help improve the tool.

## Level overview

\# | Name           | Solved | Echidna  | Filed issues
---|----------------|--------|:--------:|-------------
01 | Fallback       | Yes    | :muscle: |
02 | Fallout        | Yes    | :muscle: |
03 | Coin Flip      | Yes    | :muscle: |
04 | Telephone      | Yes    | :mag:    |
05 | Token          | Yes    | :muscle: |
06 | Delegation     | Yes    | :mag:    |
07 | Force          | Yes    | :mag:    |
08 | Vault          | N/A    | -        |
09 | King           |        | -        |
10 | Re-entrancy    | Yes    | :mag:    |
11 | Elevator       | Yes    | :muscle: |
12 | Privacy        | N/A    | -        |
13 | Gatekeeper One | Yes    | :muscle: |
14 | Gatekeeper Two | Maybe  | :mag:    | TBD
15 | Naught Coin    |        | -        |
16 | Preservation   |        | -        |
17 | Recovery       |        | -        |
18 | MagicNumber    |        | -        |
19 | Alien Codex    |        | -        | crytic/echidna#440, crytic/slither#450
20 | Denial         | Yes    | :muscle: | crytic/echidna#442
21 | Shop           | Yes    | :mag:    | crytic/echidna#446

Echidna reference:
 * :muscle:: Echidna breaks the invariant by itself or mostly by itself
 * :mag:: Echidna merely verifies some given code breaks the provided invariant

 Filed issues are issues I reported to the tool developers after experiencing
 problems while solving the mentioned levels.