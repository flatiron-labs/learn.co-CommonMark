# Ruby Methods Code Challenge

## Objectives
1. Review mass assignment
2. Review `puts` method
3. Review explicit `return`

%%%

# Code Challenge I: Mass Assignment

Define a class, School, that initializes with a name and a location. The class should also have `attr_accessor`s for name and location. The initialize method should use keyword arguments for those attributes. Then, instantiate a new instance of the School class using mass assignment.

~~~ruby

class School
  # your code here
end

school_attributes = {name: "The Flatiron School", location: "11 Broadway, NY, NY"}

# instantiate your instance of School here, using mass assignment with the above school_attributes

~~~solution

class School
  attr_accessor :name, :location

  def initialize(name:, location:)
    @name = name
    @location = location
  end
end

school_attributes = { name: "The Flatiron School", location: "11 Broadway, NY, NY" }

School.new(school_attributes)

~~~validation

assert_type(response, School)
assert_equal(response.name, "The Flatiron School")
assert_equal(response.location, "11 Broadway, NY, NY")

~~~

%%%

%%%

# Code Challenge II: Puts Method

Write a method that `puts` "ruby" 3 times.

~~~ruby

def puts_ruby_three_times
  # code your solution here
end

# do not remove the line below

puts_ruby_three_times

~~~solution

def puts_ruby_three_times
  3.times do
    puts "ruby"
  end
end

puts_ruby_three_times

~~~validation

assert_output(response, "ruby\nruby\nruby\n")

~~~

%%%

%%%

# Code Challenge III: Explicit Return

Write a method that returns 'ruby'

~~~ruby

def returns_ruby
  # code your solution here
end

# do not remove the line below

returns_ruby

~~~solution

def returns_ruby
  return "ruby"
end

returns_ruby

~~~validation

assert_output(response, "ruby")
assert_length(response, 4)

~~~

%%%

<a href='https://learn.co/lessons/ruby-repl-assertion-test' data-visibility='hidden'>View this lesson on Learn.co</a>
