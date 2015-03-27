## Readme Title

This is README content unassociated with any quiz.  Next comes an opening quiz block delimiter.

???

# This is a quiz title.  It is an H1 that succeeds an opening quiz delimiter and a newline.

?: What is 1+1?  This is the first question.  There is a newline between it and the above title.

## Markdown is parsed normally between the question, and the answer block.

```ruby
  def hey_look_a_code_block
    puts 'I'm interpreted by RedCarpet!'
  end
```

__Next comes the answer block!__

The parends below are reserved characters that indicate radio buttons.

( ) 3
( ) 2
( ) 11
( ) 1

?: This next question immediately succeeds the above answer block.

#### The square brackets below are reserved characters that indicate checkboxes.

[ ] 3
[ ] 4
[ ] 9
[ ] 7

???

## Here is an example of more README content, between quiz blocks!

hipster ipsum banana peels hipster ipsum banana peels
hipster ipsum banana peels hipster ipsum banana peels
hipster ipsum banana peels hipster ipsum banana peels

???

# The start of a new quiz block means a new H1

?: This is an example of a short answer question.  What does the below code block return?

```ruby
  def greeting
    puts "hello"
  end
```
The reserved character below generates a short answer response textfield.

[-]

???

## Quiz Specs

The first h1 inside of the `??? ... ???` block is the title of the quiz. This is required.

Questions with one answer have `( )` to indicate the choices. These will be parsed into radio buttons.

Questions with multiple answers have `[ ]` to indicate the choices. These will be parsed into check boxes.

Short answer questions (word match) will have `[-]` to indicate the input field.

Answer blocks `( )` `[-]` `[ ]` also delimit the end of the a question.  The parser expects the next character to either be the end of the quiz block `???` or a new question `?:`.

Markdown will be parsed normally within quiz blocks, between the question and the answer block.

## Quiz Answers

Next, head over to the `.answers` file in this repo to see how answers should be handled.
