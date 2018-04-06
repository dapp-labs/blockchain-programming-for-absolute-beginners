// MySimpleToken.sol

pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract SampleToken is StandardToken {

  // Variables controlling our token
  string public name = "SampleToken";
  string public symbol = "SMT";
  uint public decimals = 9;
  uint public INITIAL_SUPPLY = 1 * (10 ** decimals);

  // Constructor for our simple token

  function SampleToken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }

}
