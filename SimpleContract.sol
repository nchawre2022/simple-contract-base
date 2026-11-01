// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title SimpleContract
 * @dev A simple smart contract for the Base network.
 * Stores a message that can be updated.
 */
contract SimpleContract {
    string public message;
    address public owner;

    event MessageUpdated(string newMessage, address updatedBy);

    constructor(string memory _initialMessage) {
        message = _initialMessage;
        owner = msg.sender;
    }

    function updateMessage(string memory _newMessage) public {
        require(msg.sender == owner, "Only owner can update the message");
        message = _newMessage;
        emit MessageUpdated(_newMessage, msg.sender);
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
