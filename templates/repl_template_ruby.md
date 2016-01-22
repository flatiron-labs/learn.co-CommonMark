# Ruby Repl Template

## Lesson Title

**Please note where newlines are included in this example.**

Newlines are required:
  1. above and below repl title
  2. above and below each `%%%` block
  3. above and below each `~~~` block

Do not include newlines between validations.

%%%

# Ruby Repl Title (REQUIRED)

Directions: write a method that reverses a string, and call it, passing "12345" as an argument.

~~~ruby

# Include any comments or code you want displayed to the student.

def my_reverse(string)
  # Code your solution here
end

~~~solution

# Solution goes in this block.
# Solutions should contain double quotes only.

def my_reverse(string)
  string.reverse
end

my_reverse("12345")

~~~validation

# IMPORTANT: don't include comments in the validation section. Comments here are purely informational.

# Validation(s) go in this block.
# You can include multiple validations in Ruby repls.
# Be sure to use custom Ruby repl syntax, not chai syntax.
# Don't end your Ruby repl validation with a semicolon.
# Don't include newlines between your validations.

assert_equal(response, "54321")
assert_length(response, 5)

~~~

%%%
