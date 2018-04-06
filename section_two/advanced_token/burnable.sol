
event Burn (address target, uint256 amount);

function burnToken(address from, uint256 amount) onlyOwner	{
		// Minimum balance requirement is 0
		require(balanceOf[from] >= amount);

		// Making changes in balances
		balanceOf[from] -= amount;
		totalSupply -= amount;

		// Triggering event
		Burn(from, amount);
		return true;
};
