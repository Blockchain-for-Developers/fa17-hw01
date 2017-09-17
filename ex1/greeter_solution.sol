pragma solidity ^0.4.16;


contract greeter {
	/* Add one variable to hold our greeting */
	string greeting;

	mapping(uint => string) gMap;			// Extra credit: allow for multiple greetings
	uint gIndex;							// Extra credit: allow users to switch between greetings
	uint public count;						// Extra credit: keeps track of the number of times greetings are sent out

	function greeter(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
		greeting = _greeting;
		count = 0;							// Extra credit
		gIndex = 0;							// Extra credit
		gMap[gIndex] = greeting;			// Extra credit
	}

	function greet() returns (string)  {	// Extra credit: remove `constant` modifier
		/* Write one line of code to allow the contract to return our greeting */
		count += 1;							// Extra credit
		return greeting;
	}

	// Extra credit
	function addGreeting(string newGreeting) public {
		gIndex += 1;
		gMap[gIndex] = newGreeting;
	}

	// Extra credit
	function changeGreeting(uint n) public {
		if (n <= gIndex) {
			greeting = gMap[n];
		}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {
		revert();
	}
}
