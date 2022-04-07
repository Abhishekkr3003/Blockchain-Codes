pragma solidity ^0.8.10;

contract InfiniteLoop {
    function foo() public pure{
        uint x=1;
        while(x>0)
        {
            x=x+1;
        }
    }
}
    