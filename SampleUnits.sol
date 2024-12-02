// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract SampleUnits {
    modifier  betweenOneAndTwoEth(){
        require(msg.value >= 1 ether && msg.value <= 2 ether);
        _;
    }

    uint rumUntilTimestamp;
    uint startTimestamp;

    constructor(uint startIndays) {
        startTimestamp = block.timestamp + (startIndays * 1 days);
        rumUntilTimestamp = startTimestamp + (7 days);
    }
}