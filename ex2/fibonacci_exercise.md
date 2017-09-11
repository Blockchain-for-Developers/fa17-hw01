## Fibonacci Numbers Contract
Build a simple contract to return the fibonacci number in a position (n) in the sequence.

Fibonacci numbers are the numbers in the following integer sequence:
1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

Mathematically,
```F(n) = F(n-1) + F(n-2)```
where F(1) and F(2) = 1

### Rules
* The contract must be able to handle any value of (n), starting from 0
* The contract cannot be payable

### Minimum Requirements
* The contract must return the correct number corresponding to (n)

### Extra Credit
* Publish an event when a fibonacci number is calculated
* Persist the result of a fibonacci number if it hasn't been calculated before
