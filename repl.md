```md

# Intro to JS Loops

JS Loops are awesome.


%%%

### Another JS REPL

Write a `while` loop that fills the given array `taylorArray` with five strings, each containing "taylors gonna tay".

Here's an example of iteration in JS:

```js
for(i=0; i<10; i++;){
  
}
```

Now write your own!

~~~js

~~~
%%%


.repl

~~~js
var taylorArray = []; 
var i = 0;

while (i < 5) { 
  taylorArray.push("taylors gonna tay");
  i++;
}
~~~
var assert = chai.assert;

assert.equal(taylorArray, ["taylors gonna tay","taylors gonna tay","taylors gonna tay","taylors gonna tay","taylors gonna tay","taylors gonna tay"]);
~~~


```
