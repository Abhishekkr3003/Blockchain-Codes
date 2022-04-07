pragma solidity >=0.7.0 <0.9.0;

contract CommunityChest {
    function getBalance() public view returns(uint256) {
        return address(this).balance;
    }
    function setbalance() payable public
    {

    }
}

contract xyz {
    function addAssembly(uint x, uint y) public view returns(uint) {
        assembly {
            // Add some code here
            let result:= add(x, y)
            let result1:= "hello world"
            mstore(0x0, result)
            return (0x0, 32)
        }
    }

    function multiplicationAssembly(uint x, uint y) public view returns(uint) {
        assembly {
            let result
            // Add some code here
            if lt(x, 5)
            {
                result:= mul(x, y)
            }
            // let result := mul (x, y)
            // let result1:= "hello world"
            mstore(0x0, result)
            return (0x0, 32)
        }
    }

    function t(uint n) public view returns(uint)
    {
        assembly {
            let value:= 1
            // lt=less than
            for { let i:= 0 } lt(i, n) {   i:= add(i, 1) }
            {
                value:= mul(2, value)
            }
            mstore(0x0, value)
            return (0x0, 32)
        }
    }
}

/*
    https://docs.soliditylang.org/en/v0.8.11/assembly.html#:~:text=Inline%20assembly%20is%20a%20way%20to%20access%20the%20Ethereum%20Virtual%20Machine%20at%20a%20low%20level.%20This%20bypasses%20several%20important%20safety%20features%20and%20checks%20of%20Solidity.%20You%20should%20only%20use%20it%20for%20tasks%20that%20need%20it%2C%20and%20only%20if%20you%20are%20confident%20with%20using%20it.

*/