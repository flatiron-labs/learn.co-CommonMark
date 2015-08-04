# learn.co-CommonMark

Specification and samples for learn.co flavored [CommonMark](https://github.com/jgm/CommonMark)

We use learn.co-CommonMark when writing our [quizzes](#quiz-specs) and [code challenges](#code-challenge-spec).

For sample quizzes, refer to [`sample_quiz.md`](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/sample_quiz.md).  
For sample code challenges, refer to [`sample_repl.md`](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/sample_repl.md).

## Quiz Specs

All quizzes should be built right inside your README.md files. Quizzes are parsed by our [quiz parser](https://github.com/flatiron-labs/ironboard/blob/1801b23c562cb7bd8ef9e13d6df97f19cac4aecb/lib/inline_quiz_parser.rb) as well as by [Redcarpet](https://github.com/vmg/redcarpet), a markdown parser.

Quiz blocks begin and end with a triple question mark reserved character `???`.

The first h1 inside of the `??? ... ???` block is the title of the quiz. The title must have a newline above and below it.  THIS IS REQUIRED!

Below the title, write any directions for the quiz. The text will be parsed as markdown and can accept codeblocks. Again, leave a newline space above and below the directions text.

### Question Blocks

Questions are delineated by `?: ` followed by the question text.

```
?: Is this a question?

(X) yes
( ) no
```

### Answer Choices

Questions with one answer have `( )` to indicate the choices. These will be parsed into radio buttons. 

Questions with multiple answers have `[ ]` to indicate the choices. These will be parsed into check boxes.

Answers are specified inline using an upcase X character inside parentheses: `(X)`.

**Do not include any newlines between your answer choices.**

```
?: Can I select only one answer for this question?

( ) no
(X) yes

?: How many answers can I select for this question?

[X] 1
[X] 2
[X] all of them
[ ] I don't know, I didn't read the instructions.
```

Any standard markdown included as part of your question or answer choices will be parsed normally within quiz blocks.

```
?: Can I include **bold** text or `code` as part of my question?

(X) yes, you can use any markup, including code blocks.
```ruby
def cool_method
  "remember: no spaces between code block and answer choices."
end
```'
( ) no
```

**Note:** The final answer choice delimits the end of a question. The parser expects the next character to either be the end of the quiz block `???` or a new question `?:`, so do not include any additional material after your answer block. See the example below for further clarification.

```
?: Example question: What is 1+1?

This text here is ok.

( ) 3
(X) 2
( ) 1

This text down here is going to to break the quiz.

?: This question will not be parsed or rendered correctly.

( ) Broken
( ) womp womp
```

For sample quizzes, refer to [`sample_quiz.md`](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/sample_quiz.md).  

## Code Challenge Spec

Like quizzes, code challenges should be built right inside your README.md files. Code challenges are also referred to as "repls", and currently support two languages: Javascript and Ruby. Javascript repls are evaluated using the [Chai assertion library](http://chaijs.com/), and Ruby repls are evaluated using our own [custom testing library](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/ruby_repl_testing_library.rb), which we then pass to the [repl.it API](https://github.com/replit/ReplitClient.js) along with the student's response and the instructor's validation(s) for evaluation.

Code challenge blocks begin with the triple-percentage-sign reserved character `%%%`.

The first h1 inside of `%%%...%%%` is the title of the challenge.
- The title must have a newline above and below it.
- **This is required.**

Below the title, write any directions for the challenge. The text will be parsed as markdown and can accept codeblocks. Again, leave a newline space above and below the directions text.

The repl container is divided into three sections as below - initial values, solution, and validation.

```
~~~language

// Initial values for the repl, visible to the user

~~~solution

// Solution goes here

~~~validation

// Validation(s) go here

~~~[closing tildes]
```

**Starting section:**  
The first tilde demarcated section `~~~[language]` is used to declare the repl language and should include any initial values you want to have visible to the user. Repls currently support two languages, Ruby and Javascript.  

**Solution section:**  
The second tilde demarcated section `~~~solution` is for the solution. It contains the content you'd like displayed when a user clicks the "See Solution" button.  

**Validation section:**  
The final tilde demarcated section `~~~validation` is for validations.  
- Javascript validations can be written using the Chai.js assertion library - http://chaijs.com/guide/styles/. The `assert` and `expect` methods are both supported. `should` is NOT supported.  
- Ruby validations have their own custom assertion methods ([see below](#ruby-repl-validations)).  
- All code challenges support multiple validations. You can include as many validations as you want, each on its own separate line (with no newlines in between the validations).  
- **Use double quotation marks only.** Single quotes will not be parsed correctly.

Don't forget to close the repl container with a final `~~~` below your validation section.

### Ruby Code Challenge Validations

Ruby code challenge validations use their own custom assertion methods, as listed below. Source code for these methods is viewable [here](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/ruby_repl_testing_library.rb).

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

#### assert_output(response, some_validation)

Checks stdout of student's response against `some_validation`. This assertion allows you to test the output of a student's response, not the return value. Use this assertion to test methods like [`puts`](http://ruby-doc.org/core-2.2.2/Kernel.html#method-i-puts), which outputs a string, but returns `nil`.

```ruby
# examples
assert_output(response, expected_string)
assert_output(response, "ruby\nruby\nruby\n")      # response = `3.times { puts "ruby" }`
assert_output(response, "very creative example\n") # response = `puts "very creative example"`
assert_output(response, "multi\nline\nstring\n")   # response = `puts "multi"; puts "line"; puts "string"`
```

For sample code challenges, refer to [`sample_repl.md`](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/sample_repl.md).
