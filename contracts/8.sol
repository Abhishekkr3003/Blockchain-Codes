import "./7.sol";

contract B {
    A a = A(0xf8e81D47203A594245E36C48e151709F0C19fBe8);  // address of deployed A
    function editA() public {
        a.setTarget(1);
    }
}