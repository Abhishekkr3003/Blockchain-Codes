pragma solidity ^0.5.1;

contract MyContr {

    //Allows you to fund the contract with ether at the moment of deployement

    //You need to set the value of the transaction

    constructor() public payable {}

    function
    foo() public view returns(uint256)

    {

        // address x= address(this);

        // return x.balance;

        // return address(this);

        //
        // return msg.sender;

        return address(this).balance;

    }

    // function
    // soo() public view returns(uint)

    // {

    ///
    // uint x = msg.value;

    //
    // return x;

    //}

    function transfer(address payable receiver, uint amount) public payable returns(address) {

        require(address(this).balance >= amount);

        // require(msg.value > 20);

        receiver.transfer(amount);

        return address(this);

    }

    //Payable function that allows you to directly send ether to the contract

    //without calling a specific function

    //    function () external payable {}

}