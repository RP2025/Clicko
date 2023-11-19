// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ClickerGame {
    uint256 public clickCount;
    mapping(address => uint256) public userClicks;

    event Clicked(address indexed user, uint256 clicks);

    function click() external {
        clickCount++;
        userClicks[msg.sender]++;
        emit Clicked(msg.sender, userClicks[msg.sender]);
    }
}
