# learn.co-CommonMark

Specification and samples for learn.co flavored [CommonMark](https://github.com/jgm/CommonMark).

We use learn.co-CommonMark when writing our [quizzes](#quiz-specs).

For quiz templates, refer to [`quiz_template.md`](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/templates/quiz_template.md).  
For sample quizzes, refer to [`samples/quizzes directory`](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/samples/quizzes).  

## Quiz Specs

All quizzes should be built right inside your lesson README.md files. Quizzes are parsed by our custom [quiz parser](https://github.com/flatiron-labs/ironboard/blob/1801b23c562cb7bd8ef9e13d6df97f19cac4aecb/lib/inline_quiz_parser.rb), which utilizes [Redcarpet](https://github.com/vmg/redcarpet), a markdown parser. Quiz blocks begin and end with a triple question mark reserved character `???`.

Below is a basic quiz template that summarizes all required quiz elements:

```
???

# Title

?: Question with one correct answer

( ) Answer 1
(X) Answer 2

?: Question with multiple correct answers

[X] Correct answer
[X] Another correct answer
[ ] Incorrect answer

???
```

### Quiz Titles

The first `h1` inside of the `??? ... ???` block is the title of the quiz. The title must have a newline above and below it. **This `h1` title is required;** the quiz will not render properly without it.

Below the title, write any directions for the quiz. The text will be parsed as markdown and can accept codeblocks. Again, leave a newline space above and below the directions text.

### Question Blocks

Questions are delineated by `?: ` followed by the question text. **Include a newline between the question and the first answer choice.**

```
?: Is this a question?

(X) yes
( ) no
```

You don't need to number your questions. This will be handled for you by our CSS once the lesson is rendered on Learn.

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
    puts "remember: no spaces between code block and answer choices."
  end
`` `
( ) no
```

* Use `single ticks` for a _single_ line of code in an answer choice
* Use the `triple tick (lang)... code block ... triple tick` for _multiple_ lines of code in an answer as seen above.
* When there’s a rendering bug (such as with the use of a character like `\`), work around this issue by using HTML `<code>\</code>` tags.

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

For sample quizzes, refer to [`samples/quizzes directory`](https://github.com/flatiron-labs/learn.co-CommonMark/blob/master/samples/quizzes).
