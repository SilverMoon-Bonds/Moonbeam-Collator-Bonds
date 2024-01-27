// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//Contract is to ensure that proper share of rewards is sent
//Bond holders' wallet addresses would be entered as payees
//Split payment after rewards are sent to Collator account

import "@openzeppelin/contracts/finance/PaymentSplitter.sol";

contract RewardShare is PaymentSplitter {
    constructor (
        address[] memory payees,
        uint256[] memory shares_
    ) payable
    PaymentSplitter(payees, shares_)
    {}
}
