
%%%

### This is the Quiz Title - It is required.

Here, you can write any necessary directions for the repl.  It will be parsed as markdown, and even accepts codeblocks!

Write an array containing three strings, each saying "taylors gonna tay".


The space delineated by the tildes below is used to set any initial values for the repl, and to declare the repl langauge.  The second tilde demarcated section is for the solution.  It contains the content you would like displayed when a user clicks "See Solution".  The final tilde demarcated section is for validations in the style of the Chai.js assertion library - http://chaijs.com/guide/styles/
The `assert` and `expect` methods are both supported.  `should` is NOT supported.

~~~javascript

// Code your solution here

~~~solution

['taylors gonna tay', 'taylors gonna tay', 'taylors gonna tay']

~~~validation

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

assert.equal(response,"54321");

~~~

%%%
