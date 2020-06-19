## JPACRUDProject

Testing

### Overview (what the project is, how to do it, how to run it)
- This program allows the user who is the wedding planner expert to access information about rustic wedding venues located in Colorado.

- On the homepage, the expert will be able to search a wedding venue by it's ID (known by wedding planners specifically), can search by the name of the venue or can check out a list of venues already in the database.

- When the expert finds a wedding venue and it's information, the wedding venue data can be manipulated based on any updates the venue had.

- The expert is also able to remove a wedding venue from the database.

- The expert is also able to add a wedding venue to the database.

This program has one controller, a database accessor object, a wedding venue entity, eight JSP files (two of which are for incorporating boostrap) and a css file. It utilizes the Spring Tool Suite for servlet mapping. Gradle was used for dependency management.

The DAO implementation class contains methods to create a venue, find a venue by id, find a venue by name, update a venue inforamtion and delete a venue from the database, demonstrating CRUD.

The DAO implementation class uses entity manager which is able to access the database and has unique methods such as find(), persist() and flush() used in current program.

JPA annotations were used in this project to allow mapping to database.

The controller allows access to the DAO methods and is the link between the front end and back end.

JSP pages accept input and can pass this to the controller when calling methods from the data. The JSP pages are set as our views as well when clicking a link.


### Technologies Used
- Spring Tool Suite
- Java
- Terminal Commands
- GitHub/Git
- Atom
- MAMP
- Gradle
- SQL
- MySQL
- ERD
- MySQLWorkBench


### Lessons Learned
- This project was a good addition to last week's project and helped me understand and get more hands on experience with the JSPs and controller.
- Using entity manager and understanding various methods it has.
- JPQL practice.
- MVC practice.


## Personal Stretch Goals
- Buttons for picking boolean inputs
- Image uploads for different venues
