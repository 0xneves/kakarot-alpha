// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Revert} from "src/Fallback.sol";

contract FallbackScript is Script {
    Revert public FALLBACK;

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("EVM_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        FALLBACK = new Revert();

        vm.stopBroadcast();
    }
}
