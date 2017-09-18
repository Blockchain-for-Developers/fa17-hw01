# Fibonacci Numbers Contract
Build a simple contract that returns the integer in position (n) in the Fibonacci sequence.

Fibonacci numbers are the numbers in the following integer sequence:
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

As seen [here](https://en.wikipedia.org/wiki/Fibonacci_number), the sequence `F(n)` is defined by the recurrence relation:
```F(n) = F(n-1) + F(n-2)```
where F(0) = 0 and F(1) = 1

**All work should be done in Fibonacci_skeleton.sol**

## Rules
* The contract must be able to handle any value of (n), starting from 0
* The contract cannot be payable; if a user attempts to pay into the contract, they should have all their money refunded

## Minimum Requirements
* The contract must return the correct number corresponding to (n)

## Extra Credit
* Publish an event when a fibonacci number is calculated
* Persist the result of a fibonacci number if it hasn't been calculated before
