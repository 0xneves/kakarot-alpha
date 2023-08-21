// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Types {
    function unsigned() public pure returns (uint) {
        return type(uint).max;
    }

    function unsigned256() public pure returns (uint256) {
        return type(uint256).max;
    }

    function unsigned128() public pure returns (uint128) {
        return type(uint128).max;
    }

    function unsigned64() public pure returns (uint64) {
        return type(uint64).max;
    }

    function unsigned32() public pure returns (uint32) {
        return type(uint32).max;
    }

    function unsigned16() public pure returns (uint16) {
        return type(uint16).max;
    }

    function unsigned8() public pure returns (uint8) {
        return type(uint8).max;
    }

    function contractName() public pure returns (string memory) {
        return type(Types).name;
    }
}
