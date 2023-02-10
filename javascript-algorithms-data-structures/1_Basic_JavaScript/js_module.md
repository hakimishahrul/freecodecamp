# Basic JavaScript

## Comment Your JavaScript Code
Comments are lines of code that JavaScript will intentionally ignore. Comments are a great way to leave notes to yourself and to other people who will later need to figure out what that code does.

```js
// This is an in-line comment.

/* This is a 
multi-line comment */
```

---

## Declare JavaScript Variables
In computer science, data is anything that is meaningful to the computer. JavaScript provides eight different data types which are `undefined`, `null`, `boolean`, `string`, `symbol`, `bigint`, `number`, and `object`.

We tell JavaScript to create or declare a variable by putting the keyword `var` in front of it, like so:

```js
var ourName;
```

creates a variable called `ourName`. In JavaScript we end statements with semicolons. Variable names can be made up of numbers, letters, and `$` or `_`, but may not contain spaces or start with a number.

--- 
## Storing Values with the Assignment Operator
In JavaScript, you can store a value in a variable with the assignment operator (`=`).

```js
myVariable = 5;
```

This assigns the `Number` value `5` to `myVariable`.

If there are any calculations to the right of the `=` operator, those are performed before the value is assigned to the variable on the left of the operator.

```js
var myVar;
myVar = 5;
```

First, this code creates a variable named `myVar`. Then, the code assigns `5` to `myVar`. Now, if myVar appears again in the code, the program will treat it as if it is `5`.