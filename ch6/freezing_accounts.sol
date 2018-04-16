// Mapping that tells if an account is frozen or not
mapping (address => bool) public frozenAccounts;

event FrozenAccount(address target, bool frozenOrNot);

function freezeAccount(address target, bool freeze) onlyOwner {
		frozenAccounts[target] = freeze;

		// Triggering event
		FrozenAccount(target, freeze);
}
