// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    uint256 favoriteNumber;

    function stor(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
}
