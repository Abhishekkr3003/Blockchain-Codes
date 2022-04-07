contract SolidityTest {
   uint x;
   constructor() public{}

   function getResult() public view returns(address){
      int a = -1;
      int b = 2;
      int result = a + b;
      address owner;
      owner = tx.origin;
      return owner;
   }
}