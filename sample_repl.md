## Example Code Challenges:

Below are some inspiring example code challenges you can use as a reference when writing your own.

%%%

### Javascript Repl

Directions: Write an array containing three strings, each saying "taylors gonna tay".

~~~javascript

// Include any comments or code here that you want displayed to the student.

~~~solution

// Solution goes in this block. 
// Solutions should contain double quotes only. Single quotes will not be rendered correctly.
["taylors gonna tay", "taylors gonna tay", "taylors gonna tay"]

~~~validation

// Validation(s) go in this block
// You can include multiple validations in Javascript repls.

// Validations should contain double quotes only. Single quotes will break the repl.
// Do not include newlines between your validations.
// Do not include comments in the validation section. Comments here are purely informational.

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

# Include any comments or code you want displayed to the student.

def my_reverse(string)
  # Code your solution here
end

~~~solution

# Solution goes in this block. 
# Solutions should contain double quotes only. Single quotes will not be rendered correctly.

def my_reverse(string)
  string.reverse
end

my_reverse("12345")

~~~validation

# Validation(s) go in this block.
# You can include multiple validations in Ruby repls.
# Be sure to use custom Ruby repl syntax, not chai syntax.

# Do not end your Ruby repl validation with a semicolon.
# Do not include newlines between your validations.
# Do not include comments in the validation section. Comments here are purely informational.

assert_equal(response, "54321")
assert_length(response, 5)

~~~

%%%
