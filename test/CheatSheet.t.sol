// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {CheatSheet} from "src/CheatSheet.sol";

contract CheatSheetScript is Test {
    CheatSheet public CHEATSHEET;

    function setUp() public {
        CHEATSHEET = new CheatSheet();
    }

    function testHashes(bytes memory _hex) public {
        CHEATSHEET.useKeccak256(_hex);
        CHEATSHEET.useSha256(_hex);
        CHEATSHEET.useRipemd160(_hex);
    }

    function testECDSA(bytes memory _hex) public {
        uint256 deployerPrivateKey = vm.envUint("EVM_PRIVATE_KEY");

        bytes32 _hash = keccak256(abi.encodePacked(_hex));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(deployerPrivateKey, _hash);

        address signer = CHEATSHEET.useEcrecover(_hash, v, r, s);
        require(
            signer == vm.addr(deployerPrivateKey),
            "Invalid signer from ecrecover"
        );
    }
}
