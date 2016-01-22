# Javascript Repl Template

## Lesson Title

**Please note where newlines are included in this example.**

Newlines are required:
  1. above and below repl title
  2. above and below each `%%%` block
  3. above and below each `~~~` block

Do not include newlines between validations.

%%%

# Javascript Repl Title (REQUIRED)

Directions: Write an array containing three strings, each saying "taylors gonna tay".

~~~javascript

// Include any comments or code here that you want displayed to the student.

~~~solution

// Solution goes in this block.
// Solutions should contain double quotes only.

["taylors gonna tay", "taylors gonna tay", "taylors gonna tay"]

~~~validation

// IMPORTANT: Do not include comments in the validation section. Comments here are purely informational.

// Validation(s) go in this block
// You can include multiple validations in Javascript repls.
// Validations should contain double quotes only.
// Do not include newlines between your validations.

assert.equal(response.length, 3);
expect(response).to.be.a("array");

~~~

%%%
