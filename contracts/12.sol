pragma solidity 0.5.17;

contract parent
{
    int x=6; 
    int y; 
    function foo(int num) public view returns (int)
    {
        // x=3;    
        // y=4;
        // int z=x+y;
        //  return z;
        int result=num+1;
        return result;
    }
    function zoo() public view returns(int);
}

contract child  is parent
{
    function soo(int x) public view returns(int)
    {
        int z= foo(x);
        z=z+1;
        return z;
    }

    function zoo() public view returns(int)
    {
        int z= foo(x);
        z=z+1;   
        return z;
    }
}

/* Abstract contract */ 