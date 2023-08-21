// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// import {Test, console2} from "forge-std/Test.sol";
// import {Types} from "src/Types.sol";

// contract TypesTest is Test {
//     Types public TYPES;

//     function setUp() public {
//         TYPES = new Types();
//     }

//     function testCreationAndRuntimeCode() public {
//         bytes memory creationCode = type(Types).creationCode;
//         assertGt(creationCode.length, 0);

//         bytes memory runtimeCode = type(Types).runtimeCode;
//         assertGt(runtimeCode.length, 0);
//     }

//     function testContractName() public {
//         string memory name = TYPES.contractName();
//         assertEq(name, "Types");
//     }

//     function testUnsignedIntegers() public {
//         uint unsigned = TYPES.unsigned();
//         assertEq(unsigned, type(uint).max);

//         uint256 unsigned256 = TYPES.unsigned256();
//         assertEq(unsigned256, type(uint256).max);

//         uint128 unsigned128 = TYPES.unsigned128();
//         assertEq(unsigned128, type(uint128).max);

//         uint64 unsigned64 = TYPES.unsigned64();
//         assertEq(unsigned64, type(uint64).max);

//         uint32 unsigned32 = TYPES.unsigned32();
//         assertEq(unsigned32, type(uint32).max);

//         uint16 unsigned16 = TYPES.unsigned16();
//         assertEq(unsigned16, type(uint16).max);

//         uint8 unsigned8 = TYPES.unsigned8();
//         assertEq(unsigned8, type(uint8).max);
//     }
// }
