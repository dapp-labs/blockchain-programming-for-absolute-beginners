pragma solidity ^0.4.19;

interface tokenRecipient
{
		function receiveApproval(
				address from, uint256 tokens,
				address tokenAddress, bytes extraData);
}


contract TokenGenerator is StandardToken {

    string public name;
    string public symbol;
    uint8 public decimals = 18;

	  // Constructor for our unique token

    function TokenGenerator(
				uint256 initialSupply,
				string tokenName,
				string tokenSymbol) {
	   			name = tokenName;
	    		symbol = tokenSymbol;
	    		totalSupply = initialSupply * 10 ** decimals;
	    		balances[msg.sender] = totalSupply;
		}

		// For calling in the spender address contract

		function approveAndCall(
				address spenderAddress,
				uint256 tokens,
				bytes extraData)
				public returns (bool success) {
	    		tokenRecipient spender = tokenRecipient(spenderAddress);
					if(approve(spenderAddress, tokens)){
						spender.receiveApproval(msg.sender, tokens, this, extraData);
					}
		}
}
