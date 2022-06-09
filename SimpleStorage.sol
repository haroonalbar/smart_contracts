// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    uint256 favoriteNumber;

    //making an array for people
    People[] public people;

    //mapping
    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view and pure doesn't need gas to run
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    //calldata=>temperory cant modify , memory=>temperory , storage=>permanant
    // can only be used for {array struct or mapping}  specialtypes
    // string is an array of bytes
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        //add to mappings
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
