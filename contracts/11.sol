

contract XYZ
{   
    int x=6;
    int y;   
    function foo(int num) public view returns (int)
    {  
        int result=num+1;      
        return result;
    }
}

contract U
{  
    int x=6;
    int y;  
    function foo(int num) public view returns (int)
    { 
        int result=num;
        return result;
    }
}

contract X is XYZ
{
    function zoo(int k) public view returns (int)
    {
        // int l =foo(k);
        // 
        return k;
    }
}

contract Y is X, U
{
    // modifier fg
    // {       
    //     if(x<3)    
    //     _;
    // }
    function soo()  public view returns(int)
    {   
        int l = foo(2);
        return l;
    }
}