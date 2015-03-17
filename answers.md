GA WDI 16 Assessment
====================

1. What is your name?

    * The correct response was `Bob`.

2. How do you feel about your Ruby knowledge?

    * The correct response was `7`.

3. How do you feel about your JavaScript knowledge?

    * The correct response was `6`.

4. Name at least 4 HTTP Verbs.

    * `GET, POST, PUT, DELETE` are the big 4. Also acceptable were
    `PATCH`, `OPTIONS`, `HEAD` or any captialized word.

5. What is the difference between GET and POST?

    * A `GET` requests data from a server while a `POST` sends data to
    the server. A `GET` should not modify the state of the server,
    while a `POST` may.

6. What is a "remote" in git?

    * A remote is another copy of a git repository that you have a
    connection to. Or, "Remote repositories are versions of your
    project that are hosted on the Internet or network somewhere." We
    can `pull` code from remote repositories and `push` code to them
    as well.

7. What two attributes determine where a `<form>` tag sends its data
upon submission and whether it is a GET or POST request?

    * `action` (a URL) and `method` (GET or POST)

8. In chrome developer tools, how might you inspect the data sent to
the server from a form?

    * The network tab, fool. You open up developer tools
    (command+option+i), then click on the Network tab. (You have to do
    this *before* to submit the form). When you submit the form and
    the page refreshes, you should see that the first request in the
    Network tab will have `POST` as its Method. If you click on the
    request you should see a section under "Headers" called "Form
    Data".

9. What does the "data" attribute do? Give an example for when you
would use it.

    * See [Data Attributes](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Using_data_attributes).

10. What is MVC, and how does it work in the context of Rails?

    * MVC stands for Model-View-Controller. It's an attempt to
    separate the concerns of the data, the display of that data, and
    controlling changes to the application. In Rails we see this as
    creating a model to hold the data (such as `models/author.rb`), a
    view to display the info to the user (such as
    `view/authors/show.html.erb`), and a controller to handle the
    workflow (such as `controllers/authors_controller.rb`).

11. What is RESTful routing in the context of rails?

    * When I think of RESTful routing, I think of predictable,
    meaningful routes for a resource. So if we want our usual CRUD
    operations on a resource (e.g., an Actor), the routes should have
    follow the predictable pattern and use the correct verbs.

            actors GET    /actors              actors#index
                   POST   /actors              actors#create
         new_actor GET    /actors/new          actors#new
        edit_actor GET    /actors/:id/edit     actors#edit
             actor GET    /actors/:id          actors#show
                   PUT    /actors/:id          actors#update
                   DELETE /actors/:id          actors#destroy

12. What command initializes an empty git repository?

    * `git init`

13. Describe the process of "forking and cloning"

    * Forking and cloning are actually very similar. Forking is a
    GitHub term that creates a copy of someone else's GitHub repo on
    your GitHub account. It actually uses cloning under the
    hood. Cloning is the process in Git of taking a remote Git
    repository and making a local copy of it.

14. What does a foreign key do?

    * A constraint responsible for maintaining "referential integrity"
    between two tables in your database. If you have two tables and
    one has a column that references the primary key of the other, a
    foreign key constaint helps you make sure that you're referencing
    a valid row in the other table.

15. What is a session? How is it different than a cookie?

    * A session is server-side saved state about a user of your
    site. This data can be stored in many places, including a
    database, a cache, or in a cookie. A cookie is a piece of
    information that gets attached to every request/response that is
    sent between the browser and then server.
