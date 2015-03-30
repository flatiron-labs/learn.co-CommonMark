
```MD
%%%


%%%
```


```
In-app code exercises (REPL)

Instructors can specify a REPL-based coding exercise in the following markdown format (borrowing heavily from gitbook.io):

{% exercise %}

### Exercise Header (optional)

<Instruction Text>

{% initial %} // initialization block 

<variable declarations>

<challenge code with inline comments as instructions>

{% solution %}

<solution code>

{% validation %}

<assert code>

{% endexercise %}


Example markdown:

{% exercise %}

### Basic JS Repl

Fill up the 2 conditions so that `primaryCategory` equals `"E/J"` only if name equals `"John"` and country is `"England"`, and so that `secondaryCategory` equals `"E|J"` only if name equals `"John"` or country is `"England"`
{% initial %}
var name = "John";
var country = "England";
var primaryCategory, secondaryCategory;

if ( /* Fill here */ ) {
    primaryCategory = "E/J";
}
if ( /* Fill here */ ) {
    secondaryCategory = "E|J";
}
{% solution %}
var name = "John";
var country = "England";
var primaryCategory, secondaryCategory;

if (name === "John" && country === "England") {
    primaryCategory = "E/J";
}
if (name === "John" || country === "England") {
    secondaryCategory = "E|J";
}
{% validation %}
assert(primaryCategory === "E/J" && secondaryCategory === "E|J");
{% endexercise %}



And here’s what the rendered output looks like.

Another example for while loop: markdown | rendered output
```
