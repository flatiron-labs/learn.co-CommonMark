# Quiz Specs

The first h1 inside of the `??? ... ???` block is the title of the quiz. This is required.

Questions with one answer have `( )` to indicate the choices. These will be parsed into radio buttons.

Questions with multiple answers have `[ ]` to indicate the choices. These will be parsed into check boxes.

Answer blocks `( )` `[ ]` also delimit the end of the a question.  The parser expects the next character to either be the end of the quiz block `???` or a new question `?:`.

Markdown will be parsed normally within quiz blocks, between the question and the answer block.

# Quiz Answers

Answers are specified inline using an upcase `X` character.

# Sample Quiz

## Readme Title

This is README content that exists outside of the quiz block. Next comes an opening quiz block delimiter.

???

# This is a quiz title.  It is an H1 that succeeds an opening quiz delimiter and a newline.

?: What is 1+1?  This is the first question.  A newline is required between this and the title above.

Standard markdown will be parsed as expected between the question, and the answer block.

__The parends below are reserved characters that indicate radio buttons.__

( ) 3
(X) 2
( ) 11
( ) 1

?: What is 1+1?  This is how you can include code blocks as a choices.

( )
```ruby
  def three
    "3"
  end
```
(X)
```ruby
  def two
    "2"
  end
```
( )
```ruby
  def one
    "1"
  end
```
( )
```ruby
  def eleven
    "11"
  end
```

?: A newline is required between this question, and the answer block above.  Select numbers 3 and 4.

#### The square brackets below are reserved characters that indicate checkboxes.

[X] 3
[X] 4
[ ] 9
[ ] 7

???
