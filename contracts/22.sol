pragma solidity ^0.5.0;

contract Sharer {
    function sendHalf(address payable addr) public payable returns (uint balance) {
        require(msg.value % 2 == 0, "Even value required."); //Require() can have an optional message string
        uint balanceBeforeTransfer = address(this).balance;
        (bool success, ) = addr.call.value(msg.value / 2)("");
        require(success);
        // Since we reverted if the transfer failed, there should be
        // no way for us to still have half of the money.
       assert(address(this).balance == balanceBeforeTransfer - msg.value / 2); // used for internal error checking
        // assert(address(this).balance==200);
        return address(this).balance;
    }
}

// Require and Assert and Payable