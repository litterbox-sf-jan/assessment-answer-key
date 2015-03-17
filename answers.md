#### What is your name?

The correct response was `Bob`.

#### How do you feel about your Ruby knowledge?

The correct response was `7`.

#### How do you feel about your JavaScript knowledge?

The correct response was `6`.

#### Name at least 4 HTTP Verbs.

`GET, POST, PUT, DELETE` are the big 4. Also acceptable were `PATCH`,
`OPTIONS`, `HEAD` or any captialized word.

#### What is the difference between GET and POST?

A `GET` requests data from a server while a `POST` sends data to the
server. A `GET` should not modify the state of the server, while a
`POST` may.

#### What is a "remote" in git?

A remote is another copy of a git repository that you have a
connection to. Or, "Remote repositories are versions of your project
that are hosted on the Internet or network somewhere." We can `pull`
code from remote repositories and `push` code to them.

#### What two attributes determine where a `<form>` tag sends its data upon submission and whether it is a GET or POST request?

`action` (a URL) and `method` (GET or POST)

#### In chrome developer tools, how might you inspect the data sent to the server from a form?

The network tab, fool. You open up developer tools (command+option+i),
then click on the Network tab. (You have to do this *before* you
submit the form). When you submit the form and the page refreshes, you
should see that the first request in the Network tab will have `POST`
as its Method. If you click on the request, you should see a section
under "Headers" called "Form Data". The data sent by the form will be
shown underneath.

#### What does the "data" attribute do? Give an example for when you would use it.

See [Data Attributes](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Using_data_attributes).

#### What is MVC, and how does it work in the context of Rails?

MVC stands for Model-View-Controller. It's an attempt to separate the
concerns of the data itself, the display of that data, and controlling
changes to the application. In Rails we see this as creating a model
to hold the data (such as `models/author.rb`), a view to display the
info to the user (such as `view/authors/show.html.erb`), and a
controller to handle the workflow (such as
`controllers/authors_controller.rb`).


#### What is RESTful routing in the context of rails?

When I think of RESTful routing, I think of predictable, meaningful
routes for a resource. So if we want our usual CRUD operations on a
resource (e.g., an Actor), the routes should have follow the
predictable pattern and use the correct verbs.

    GET    /actors            actors#index
    POST   /actors            actors#create
    GET    /actors/new        actors#new
    GET    /actors/:id/edit   actors#edit
    GET    /actors/:id        actors#show
    PUT    /actors/:id        actors#update
    DELETE /actors/:id        actors#destroy

#### What command initializes an empty git repository?

`git init`

#### Describe the process of "forking and cloning"

Forking and cloning are actually very similar. Forking is a GitHub
term that creates a copy of someone else's GitHub repo on your GitHub
account. It actually uses cloning under the hood. Cloning is the
process in Git of taking a remote Git repository and making a local
copy of it.


#### What does a foreign key do?

A constraint responsible for maintaining "referential integrity"
between two tables in your database. If you have two tables and one
has a column that references the primary key of the other, a foreign
key constaint helps you make sure that you're referencing a valid row
in the other table.


#### What is a session? How is it different than a cookie?

A session is server-side saved state about a user of your site. This
data can be stored in many places, including a database, a cache, or
in a cookie. A cookie is a piece of information that gets attached to
every request/response that is sent between the browser and then
server.

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

The `.bind` function, when invoked on another function, and passed a new `this` value, will return a new function, whose `this` is bound to the passed in `this`.

```
var student = {
  name: 'Bob'
}

var instructor = {
  name: 'Jane'
}

function sayHello() {
  console.log("Hello", this.name);
}

var sayHelloToStudent = sayHello.bind(student);
var sayHelloToInstructor = sayHello.bind(instructor);

sayHelloToStudent();
sayHelloToInstructor();
```

#### Name the 6 JS native types

String, Number, Boolean, Object, Null, Undefined

#### What is the difference between 'null' and 'undefined'? Why is this distinction important?

Undefined means a variable has been declared but has not yet been assigned a value. Null is an assignment value. It can be assigned to a variable as a representation of no value. Checking for both of these is very different as well. 

#### Why should you always use the '===' operator in javascript?

Because Douglas Crockford said so. Also, it's essential to check for type as well as equality to reduce any chance of making mistakes. 

#### What does the 'self' keyword do in ruby? Why is it important? Talk about "implicit self" 

#### What are the two ways to print out the word "Elie" given the following JavaScript object: var person =  {name: "Elie"}

* `person.name`
* `person["name"]`

#### What is the difference between the jQuery methods .text() and .html()?

.text() only returns only the inner text of whatever you're looking for. .html() returns all the html. These methods are very similar to .innerText and .innerHTML in vanilla JavaScript.
