// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {CheatSheet} from "src/CheatSheet.sol";

contract CheatSheetScript is Script {
    CheatSheet public CHEATSHEET;

    function setUp() public {
        CHEATSHEET = new CheatSheet();
    }

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("EVM_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CHEATSHEET.useKeccak256("0x010101010101010101");
        CHEATSHEET.useSha256("0x010101010101010101");
        CHEATSHEET.useRipemd160("0x010101010101010101");

        bytes32 _hash = keccak256(abi.encodePacked("0x010101010101010101"));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(deployerPrivateKey, _hash);

        address signer = CHEATSHEET.useEcrecover(_hash, v, r, s);
        require(
            signer == vm.addr(deployerPrivateKey),
            "Invalid signer from ecrecover"
        );

        vm.stopBroadcast();
    }
}
