# Quizzes

A multiple choice and text entry quiz can be represented in markdown in the following manner. A quiz block begins with the `???` delimiter.


```MD
???algebra-solution
# Basic Algebra

## Addition

1. What is 1+1?

( ) 3
( ) 2
( ) 11
( ) 1

2. What happens when you add an odd number and an odd number?

[ ] You always get an even number back.
[ ] You always get an odd number back.
[ ] You can sometimes get an even and sometimes get an odd number.

## Multiplication

1. What is 4*4?

[ ] 16
[ ] 12
[ ] 44
[ ] 8

2. Describe the following operation in words `4*2+1`, mentioning which operators go first and what the answer is?

???
```

Within the opening delimiter, you can specificy a file that contains the answer key in order (so `algebra-solution` would contain `211`

Regular markdown is allowed so you may use headers and other markdown basically anywhere. 

Questions are simply 1. followed by `[ ]` for multiple choice.A question with only one `[ ]` is considered a text entry.
