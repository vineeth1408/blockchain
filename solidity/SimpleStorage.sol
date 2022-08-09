// SPDX-Licence-Identifier: MIT
pragma solidity 0.8.7; // Hello all

contract SimpleStorage {
    bool hasFavouriteNumber = false;
    uint public favouriteNumber;
    int number = -2345;
    string favouriteNumberInTest = "Five";
   

    struct People {
        uint number;
        string name;
    }
    People[] public people;
    mapping(string => uint) public nameToFavouriteNumber;

    function addPerson(string memory _name, uint fav) public {
        people.push(People(fav,_name));
        nameToFavouriteNumber[_name] = fav;
    }

    function store(uint favNumber) public {
        favouriteNumber = favNumber;
        retrieve();
    }
    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
} 