#### What is the purpose of breakpoints as you've seen them used in the chrome developer tools?

To stop execution of our JavaScript so that we can examine the values of our variables as well as gain a complete understanding of scope and how functions we write are being called. It is a tremendously valuable tool for debugging 

#### What is the purpose of the .forEach function in native javascript? Write a code sample demonstrating its use on an array of numbers.

forEach allows us to iterate through  JavaScript arrays. 

```
var arr = [1,3,5]
arr.forEach(function(element, index) {
  console.log(element) // returns 1,3,5
  console.log(index) // returns 0,1,2
})
```

#### What is the purpose of the .bind function in native JavaScript? Write a code sample demonstrating its purpose

Grrrr.

#### Name the 6 JS native types

String, Number, Boolean, Object, Null, Undefined

#### What is the difference between 'null' and 'undefined'? Why is this distinction important?

Undefined means a variable has been declared but has not yet been assigned a value. Null is an assignment value. It can be assigned to a variable as a representation of no value. Checking for both of these is very different as well. 

#### Why should you always use the '===' operator in javascript?

Because Douglas Crockford said so. Also, it's essential to check for type as well as equality to reduce any chance of making mistakes. 

#### In chrome developer tools, how might you inspect the data sent to the server from a form?

The Network tab

#### What does the 'self' keyword do in ruby? Why is it important? Talk about "implicit self" 

#### What are the two ways to print out the word "Elie" given the following JavaScript object: var person =  {name: "Elie"}

1 - person.name
2 - person["name"]

#### What is the difference between the jQuery methods .text() and .html()?

.text() only returns only the inner text of whatever you're looking for. .html() returns all the html. These methods are very similar to .innerText and .innerHTML in vanilla JavaScript.











