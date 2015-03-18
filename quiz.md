```MD

## Readme Title

Learning stuff, blah blah

???

# Arithmetic Quiz

1. What is 1+1?

( ) 3
( ) 2
( ) 11
( ) 1

2. What do you multiply to get 24?

[ ] 3*8
[ ] 4*6
[ ] 4*4
[ ] 3*3

3. What is the operation that returns the remainder of one number divided by another number?

[-]

???

More readme, code, this, that, etc...

???

# Personal Essay

1. Write an essay about your childhood.

[---]

???
```

The first h1 inside of the `??? ... ???` block is the title of the quiz. This is required.

Questions with one answer have `( )` to indicate the choices. These will be parsed into radio buttons.

Questions with multiple answers have `[ ]` to indicate the choices. These will be parsed into check boxes.

Short answer questions (word match) will have `[-]` to indicate the input field.

Essays, which can be included in the `??? .... ???` block with other questions, will have `[---]` to indicate the input field (textbox). Essays are handled differently than the other question types. They are submitted for TA review; they do not have a corresponding answer in the `.answers` file.
