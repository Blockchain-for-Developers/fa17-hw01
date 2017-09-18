pragma solidity ^0.4.16;


contract Fibonacci {
	mapping(uint => uint) fibList;				// Extra credit

	event calcationMade(uint n, uint calc); 	// Extra credit

	function calculate(uint position) returns (uint result) {
		/* Carry out calculations to find the nth Fibonacci number */
		require(position >= 0);					// `position` cannot be negative
		if (position == 0) {
			return 0;
		}
		else if (position < 2) {
			return 1;
		}
		else {
			if (fibList[position] != 0) {
				return fibList[position];
			}
			result = calculate(position - 1) + calculate(position - 2);
			fibList[position] = result;			// Extra credit
			calcationMade(position, result);	// Extra credit: event only fires when calculating integer at new position
			return result;
		}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {
		revert();
	}
}
