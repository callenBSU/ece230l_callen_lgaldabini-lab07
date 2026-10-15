# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Connor Allen, Logan Galdabini
## Summary
In this lab, we implemented the ability to show half subtraction, subtraction of 2 numbers using ones 
compliment, and conversion of an 8 bit number into twos complement. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The only difference between half add and half sub is that half add's carry is A & B while half sub's borrow
is ~A & B. That is the only real difference.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The problem with one's carry is that it is a negative 0 when all bit positions are 1. This is a problem
because 0 and -0 are the same number mathematically, so they should be represented by the same bitstring.

### 3 - What is the edge case and problem with Two’s Complement number representation?
An edge case is that because 0 occupies one place, there will always be more negative numbers than positive
numbers. This means that there is no positive equivalent to the lowest negative number.
