## Readme Title

This is README content unassociated with any quiz.  Next comes an opening quiz block delimiter.

```md
???

# This is a quiz title.  It is an H1 that succeeds an opening quiz delimiter and a newline.

?: What is 1+1?  This is the first question.  A newline is required between this and the title above.

## Standard markdown will be parsed as expected between the question, and the answer block.

__The parends below are reserved characters that indicate radio buttons.__

( ) 3
( ) 2
( ) 11
( ) 1

?: A newline is required between this question, and the answer block above.

#### The square brackets below are reserved characters that indicate checkboxes.

[ ] 3
[ ] 4
[ ] 9
[ ] 7

???
```

## Now we are outside of the quiz block.  Here is an example of more README content, between quiz blocks!

hipster ipsum banana peels hipster ipsum banana peels
hipster ipsum banana peels hipster ipsum banana peels
hipster ipsum banana peels hipster ipsum banana peels

```md
???

# The start of a new quiz block, which means a new H1, or quiz title.

?: This is an example of a short answer question.  What does the below code block return?

```ruby
  def greeting
    puts "hello"
  end
```
```
The reserved character below generates a short answer response textfield.

[-]

???
```

## Quiz Specs

The first h1 inside of the `??? ... ???` block is the title of the quiz. This is required.

Questions with one answer have `( )` to indicate the choices. These will be parsed into radio buttons.

Questions with multiple answers have `[ ]` to indicate the choices. These will be parsed into check boxes.

Short answer questions (word match) will have `[-]` to indicate the input field.

Answer blocks `( )` `[-]` `[ ]` also delimit the end of the a question.  The parser expects the next character to either be the end of the quiz block `???` or a new question `?:`.

Markdown will be parsed normally within quiz blocks, between the question and the answer block.

## Quiz Answers

Next, head over to the `.answers` file in this repo to see how answers should be handled.

## HTML Conversion

```md
???

# This is a quiz title.  It is an H1 that succeeds an opening quiz delimiter and a newline.

?: What is 1+1?  This is the first question.  A newline is required between this and the title above.

## Standard markdown will be parsed as expected between the question, and the answer block.

__The parends below are reserved characters that indicate radio buttons.__

( ) 3
( ) 2
( ) 11
( ) 1
```

Could be represented in HTML as:

```html
<form> <!-- Creates an interesting issue in terms of semantic HTML as the `???` delimiter should for sure start a <form> tag, or perhaps maybe only a <fieldset>, but how would we indicate the attributes of a form tag -->
  <h1> <!-- though we could use a <legend> tag -->
    This is a quiz title.  It is an H1 that succeeds an opening quiz delimiter and a newline.
  </h1>
  
  <fieldset>
    <legend>
      What is 1+1?  This is the first question.  A newline is required between this and the title above.
      <h2>Standard markdown will be parsed as expected between the question, and the answer block.</h2>
      <em>The parends below are reserved characters that indicate radio buttons.</em>
    </legend>
    
    <input type="radio" name="question_1" id="question_1"> <label for="question_1">3</label>
  </fieldset>
  <!-- WIP -->
</form>
```
