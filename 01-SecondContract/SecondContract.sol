pragma solidity ^0.4.0;

contract Bank{
    uint private value;

    constructor(uint amount) public{
        value = amount;
    }

    function deposit (uint amount) public{
        value += amount;
    }

    function withdraw (uint amount) public{
        value -= amount;
    }

    function balance() public view returns (uint) {
        return value;
    }

}

contract MyFirstContract is Bank(20) {

    string private name;
    uint private age;

    function setName(string newName) public{
        name = newName;
    }

    function getName() public view returns (string) {
        return name;
    }

    function setAge(uint newAge) public{
        age = newAge;
    }

    function getAge() public view returns (uint) {
        return age;
    }
}