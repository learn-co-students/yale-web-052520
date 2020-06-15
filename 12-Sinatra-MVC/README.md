# Sinatra and MVC

### LGs:
- [x] Explain the Model View Controller (MVC) pattern and give an example
- [x] Implement one model that inherit from ActiveRecord
- [x] Implement one controller to route and process requests
- [x] Implement ERB template and get it to render data from controller and model


#### **Explain the Model View Controller (MVC) pattern and give an example**
* How and Why we use the MVC pattern?
![](https://i.imgur.com/HlICHEU.png)
    * Separation of concerns
    * Model: interacts with our database, how we create instances
    * Controller: go-between
    * View: html that renders a web page
* Sinatra from scratch
* config .ru

**TASK:** Take 2 mins with you partner and discuss the MVC pattern
    
#### **Implement one model that inherit from ActiveRecord**
* Model
    * A class (template for objects) which represents a table
    * Where business logic goes

**TASK:** Implement books migration with title and year columns
    
#### **Implement one controller to route and process requests**
* Controller
    * Where the path is driven!
    * Analogies:
        * Model would be the kitchen, view would be the customers, and the controller would be the server
        * Model would be the factory, view would be the end user, and the controller would be the distributor
    * `get '/'`

**TASK:** Create route for `/home` that displays "Hi!!!"

#### **Implement ERB template and get it to render data from controller and model**
* create `home.erb` view file
* display message "Hi!!!" using instance variable
* create `index.erb` to display all the books

**TASK:** create route and erb to display single book information
* View info on an individual book
    * get '/books/:id'
    * how the params hash changes and where the data comes from?
    * show.erb

