// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CheatSheet {
    function useKeccak256(bytes memory _hex) public pure returns (bytes32) {
        return keccak256(_hex);
    }

    function useSha256(bytes memory _hex) public pure returns (bytes32) {
        return sha256(_hex);
    }

    function useRipemd160(bytes memory _hex) public pure returns (bytes32) {
        return ripemd160(_hex);
    }
}
