contract parent
{
    int x ;
    int y;
    function foo(int num) public view returns (int)
    {
        // x=3;
        // y=4;
        // int z=x+y;
        //  return z;     
        int result=num;
        return result+1;
    }
}

contract child  is parent
{
    function soo(int x) public view returns(int)    
    {
        int z= foo(x);
        return z;
    }
}

/*
A
| \
B C
| /
D
 Both works
*/