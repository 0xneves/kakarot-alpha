// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Revert {
    fallback() external payable {
        revert("Reverted on Fallback");
    }

    receive() external payable {
        revert("Reverted on Receive");
    }
}

contract Require {
    fallback() external payable {
        require(
            msg.value == 0.1 ether,
            "msg.value should be strictly equal to 1 eth on Fallback"
        );
    }

    receive() external payable {
        require(
            msg.value == 0.1 ether,
            "msg.value should be strictly equal to 1 eth on Receive"
        );
    }
}

contract Context {
    uint256 public balance;
    bytes public data;

    fallback() external payable {
        balance = msg.value;
        data = msg.data;
    }

    receive() external payable {
        balance = msg.value;
    }
}

contract Call {
    address public RECEIVER;

    constructor(address _receiver) {
        RECEIVER = _receiver;
    }

    receive() external payable {
        RECEIVER.call{value: msg.value}("");
    }
}

contract CallReceiver {
    receive() external payable {
        (msg.sender).call{value: msg.value}("");
    }
}
