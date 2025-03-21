// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0; // versione del linguaggio

contract SimpleStorage {

    uint256 myFAvoruriteNumber =5117; // 0

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    Person[] public List_of_friends; // default []

    // chelsea -> 232
    mapping (string => uint256) public  nameToFavouriteNumber;

    function store(uint256 _favNum) public{
        myFAvoruriteNumber = _favNum;
    }

    function retrieve() public view returns (uint256){
        return myFAvoruriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // Person memory newPerson = Person(_favouriteNumber, _name)
        List_of_friends.push(Person(_favouriteNumber, _name) ); // aggiungo le persone alla mia lista
        nameToFavouriteNumber[_name] = _favouriteNumber; 
    }
}
