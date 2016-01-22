# Truthiness Code Challenge

## Objectives

1. Strengthen your understanding of truthiness in Ruby
2. Practice using boolean and comparison operators

%%%

# Code Challenge I

Take a look at the code below. We have defined a method, `returning_true` that uses a comparison operator, the `<` (less than) to compare the number 14 to...nothing. Fill out the necessary portion of the code so that the method will return `true`. Then, call the method.

~~~ruby

def returning_true
  14 < # your solution here
end

# DO NOT touch the following line

returning_true

~~~solution

def returning_true
  14 < 20
end

returning_true

~~~validation

assert_true(response)

~~~

%%%

%%%

### Code Challenge II

Here we have a method, `returning_false` that uses both comparison and boolean operators. Fill out the remainder of the method so that it returns false. Then, call the method.

~~~ruby

def returning_false
  7 > 4 && 100 < # your solution here
end

# DO NOT touch the following line!

returning_false

~~~solution

def returning_false
  7 > 4 && 100 < 99
end

returning_false

~~~validation

assert_false(response)

~~~

%%%

%%%

### Code Challenge III

Take a look at the method `using_truthiness` below. Fill out the missing portion so that the method returns false. Then, call the method.

~~~ruby

def using_truthiness
  7 > 8 || # your solution here
end

# Do NOT touch the following line!

using_truthiness

~~~solution

def using_truthiness
  7 > 8 || 8 < 7
end

using_truthiness

~~~validation

assert_equal(response, false)

~~~

%%%

<a href='https://learn.co/lessons/truthiness-code-challenge-new-repl-syntax' data-visibility='hidden'>View this lesson on Learn.co</a>
