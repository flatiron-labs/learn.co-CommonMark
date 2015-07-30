## Example Code Challenges:

Below are some inspiring example code challenges you can use as a reference when writing your own.

%%%

### Javascript Repl

Directions: Write an array containing three strings, each saying "taylors gonna tay".

~~~javascript

// Code your solution here

~~~solution

['taylors gonna tay', 'taylors gonna tay', 'taylors gonna tay']

~~~validation

// Validations go in this block
// Validations should contain double quotes only. Single quotes will break the repl.
// You can include multiple validations in Javascript repls.

assert.equal(response.length, 3);
expect(response).to.be.a("array");

~~~

%%%

### You can add some more markdown here, in between repls

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

# Be sure to use custom Ruby repl syntax, not chai syntax.
# Do not end your Ruby repl validation with a semicolon.
# Ruby repls currently support single validations only. Do not include more than one validation in your Ruby repl.

assert_equal(response, "54321")

~~~

%%%
