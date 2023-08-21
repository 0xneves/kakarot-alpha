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

        vm.stopBroadcast();
    }
}
