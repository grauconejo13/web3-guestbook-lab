// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Guestbook {
    struct Entry {
        address sender;
        string message;
        uint256 timestamp;
    }

    Entry[] private entries;

    event GuestbookSigned(
        address indexed sender,
        string message,
        uint256 timestamp
    );

    function signGuestbook(string calldata message) external {
        require(bytes(message).length > 0, "Message cannot be empty");

        entries.push(
            Entry({
                sender: msg.sender,
                message: message,
                timestamp: block.timestamp
            })
        );

        emit GuestbookSigned(msg.sender, message, block.timestamp);
    }

    function getEntries() external view returns (Entry[] memory) {
        return entries;
    }

    function getEntryCount() external view returns (uint256) {
        return entries.length;
    }
}
