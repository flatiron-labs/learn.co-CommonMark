
## Repls

Repl blocks begin with the triple percentage sign mark reserved character `%%%`.

The first h1 inside of `%%%...%%%` is the title of the quiz.
- The title must have a newline above and below it.
- This is required.

Below the title, write any directions for the quiz. The text will be parsed as markdown and can accept codeblocks. Again, leave a newline space above and below the directions text.

The repl container is divided into three sections as below - initial values, solution, and validation.

```
~~~language

// Initial values for the repl, visible to the user

~~~solution

// Solution goes here

~~~validation

// Validation goes here

~~~[closing tildes]
```

**Starting section:**  
The first tilde demarcated section `~~~[language]` is used to declare the repl language and include any initial values you want to have visible to the user.  

**Solution section:**  
The second tilde demarcated section `~~~solution` is for the solution. It contains the content you would like displayed when a user clicks "See Solution".  

**Validation section:**  
The final tilde demarcated section `~~~validation` is for validations.  
- Javascript validations can be written in the style of the Chai.js assertion library - http://chaijs.com/guide/styles/ The `assert` and `expect` methods are both supported. `should` is NOT supported.
- Ruby validations have their own custom supported methods ([see below](#ruby-repl-validations))
- Use double quotation marks only. Single quotes will not be parsed correctly.  
- Remove any trailing whitespace. Trailing whitespace will not be parsed correctly.  

Don't forget to close the repl container with a final `~~~` below your validation section.

### Ruby Repl Validations

Ruby repls use their own custom validations, as listed below:

#### assert_equal(response, some_validation)

Checks `response` against value of `some_validation`. **Note:** use `assert_equal(response, true)` if you want to validate whether a solution returns the actual value `true`. Use `assert_true(response)` to evaluate truthiness.

```ruby
# examples
assert_equal(response, some_validation)
assert_equal(response, 1) # response = 1
assert_equal(response, ["Ruby", "Javascript", "SQL"]) # response = ["Ruby", "Javascript", "SQL"]
assert_equal(response, {"Jon Snow": {name: "Jon", email: "jon_snow@thewall.we", favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"]}) # response = {"Jon Snow": {name: "Jon", email: "jon_snow@thewall.we", favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"]}
```

#### assert_type(response, Type)

Checks [Ruby type](http://ruby-doc.org/core-1.8.7/Object.html#method-i-type) of `response` against given Ruby `Type`.

```ruby
# examples
assert_type(response, Type)
assert_type(response, String) # response = "Taylor"
assert_type(response, Array)  # response = [1,2,3]
assert_type(response, Hash)   # response = {color: "blue"}
```

#### assert_length(response, some_length)

Checks `response.length` against `some_length`, where `some_length` is an integer.

```ruby
# examples
assert_length(response, some_length)
assert_length(response, 3)  # response = ["one", "two", "three"]
assert_length(response, 42) # response = "a-string-with-exactly-forty-two-characters"
```

#### assert_match(response, some_array)

Checks `response` and `some_array` are the same length AND all elements of `response` are included in `some_array`, where `response` is an array (similar to [RSpec::Matchers#match_array](http://www.rubydoc.info/github/rspec/rspec-expectations/RSpec/Matchers:match_array)).

```ruby
# examples
assert_match(response, some_array)
assert_match(response, [1, 2, 3]) # response = [1,3,2]
assert_match(response, ["Daria", "Jane", "Trent", "Quinn"]) # response = ["Jane", "Trent", "Daria", "Quinn"]
```

#### assert_true(response)

Checks truthiness of `response`. **Note:** use `assert_equal(response, true)` if you want to validate whether a solution returns the actual value `true`. Use `assert_true(response)` to evaluate truthiness.

```ruby
# examples
assert_true(response)
assert_true(response) # response = "Colbert"
assert_true(response) # response = 1776
assert_true(response) # response = ["U", "S", "A"]
```

#### assert_false(response)

Checks falsiness of `response`.

```ruby
# examples
assert_false(response)
assert_false(response) # response = nil
assert_false(response) # response = false
```

#### assert_contains(response, some_element)

Checks that `response` contains `some_element` (similar to [Array#include?](http://ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F)).

```ruby
# examples
assert_contains(response, some_element)
assert_contains(response, "Taylor") # response = "Taylor Swift"
assert_contains(response, 1989)     # response = [1989, 2015]
```

## Example Repls:

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

assert_equal(response,"54321");

~~~

%%%
