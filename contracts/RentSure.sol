// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RentSure {
    address public landlord;
    address public tenant;

    uint public rentAmount;
    uint public depositAmount;
    uint public nextPaymentDue;
    uint public penaltyAmount;
    uint public leaseEnd;

    enum LeaseState { Inactive, Active, Ended }
    LeaseState public state;

    constructor() {
        landlord = msg.sender;
        state = LeaseState.Inactive;
    }

    modifier onlyLandlord() {
        require(msg.sender == landlord, "Only landlord can call this");
        _;
    }

    modifier onlyTenant() {
        require(msg.sender == tenant, "Only tenant can call this");
        _;
    }

    function registerLease(
        address _tenant,
        uint _rentAmount,
        uint _penaltyAmount,
        uint _durationInMonths
    ) external payable onlyLandlord {
        require(state == LeaseState.Inactive, "Lease already registered");
        require(msg.value > 0, "Deposit required");

        tenant = _tenant;
        rentAmount = _rentAmount;
        depositAmount = msg.value;
        penaltyAmount = _penaltyAmount;
        nextPaymentDue = block.timestamp + 30 days;
        leaseEnd = block.timestamp + (_durationInMonths * 30 days);
        state = LeaseState.Active;
    }

    function payRent() external payable onlyTenant {
        require(state == LeaseState.Active, "Lease not active");
        require(block.timestamp >= nextPaymentDue, "Too early");
        require(msg.value == rentAmount, "Incorrect rent");

        payable(landlord).transfer(msg.value);
        nextPaymentDue += 30 days;
    }

    function applyPenalty() external onlyLandlord {
        require(block.timestamp > nextPaymentDue, "Rent not overdue");
        require(depositAmount >= penaltyAmount, "Not enough deposit left");

        depositAmount -= penaltyAmount;
        payable(landlord).transfer(penaltyAmount);
        nextPaymentDue += 30 days;
    }

    function endLease() external onlyLandlord {
        require(state == LeaseState.Active, "Lease not active");
        require(block.timestamp >= leaseEnd, "Lease still ongoing");

        state = LeaseState.Ended;
        if (depositAmount > 0) {
            payable(tenant).transfer(depositAmount);
        }
    }
}
