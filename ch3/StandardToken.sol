pragma solidity ^0.4.19;

contract StandardToken is ERC20TokenInterface {

	  // State variables of StandardToken contract

    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;
    uint256 public totalSupply;

	  // Implementations of ERC20TokenInterface functions

	  function totalSupply() public constant returns (uint balance) {
				return totalSupply;
		}

		function balanceOf(address tokenOwner) public constant returns (uint balance) {
				return balances[tokenOwner];
		}

		function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
				return allowed[tokenOwner][spender];
		}

    function transfer(address to, uint tokens) public returns (bool success) {
      	_transfer(message.sender, to, tokens);
  	}

  	function transferFrom(address from, address to, uint tokens) public returns (bool success) {
      	require(allowed[from][msg.sender] >= tokens);
      	allowed[from][msg.sender] -= tokens;
      	_transfer(from, to, tokens);
      	return true;
  	}

  	function _transfer(address from, address to, uint tokens) public returns (bool success) {
     		// Don't allow burning for now
     		require(to != 0x0);
     		// Check for overflows
     		require(balances[to] + tokens >= balances[to]);
     		// Check for enough balance and valid number of tokens
     		require(balances[from] >= tokens && tokens > 0);
     		// Do the actual transfer
     		balances[from] -= tokens;
     		balances[to] += tokens;
     		// Trigger the event for the transfer
     		Transfer(from, to, tokens);
     		return true;
  	}
}
