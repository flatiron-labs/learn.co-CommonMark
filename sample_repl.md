## Example Code Challenges:

%%%

### Javascript Repl

Directions: Write an array containing three strings, each saying "taylors gonna tay".

~~~javascript

// Code your solution here

~~~solution

['taylors gonna tay', 'taylors gonna tay', 'taylors gonna tay']

~~~validation

// Validations go in this block - VALIDATIONS MAY CONTAIN DOUBLE QUOTES ONLY -- NO SINGLE QUOTES!!

assert.equal(response.length, 3);
expect(response).to.be.a("array");

~~~

%%%

### Some more markdown here, in between repls

and so on and so on

%%%

### Ruby Repl

Write a method that reverses a string, and call it, passing "12345" as an argument.

~~~ruby

# Code your solution here

~~~solution

def reverse(string)
  string.reverse
end

reverse("12345")

~~~validation

// Be sure to use custom Ruby repl syntax, not chai syntax.
// Do not end your Ruby repl validation with a semicolon.

assert_equal(response, "54321")

~~~

%%%
