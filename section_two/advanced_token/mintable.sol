function mintToken(address target, uint256 amount) onlyOwner {
		// Making changes in balances
		balanceOf[target] += amount;
		totalSupply += amount;

		// Triggering events
		Transfer(0, owner, amount);
		Transfer(owner, target, amount);
};
