# One to Many

### LGs:

- [ ] **Implement one object to many objects relationship and Demonstrate single source of truth**
    - [ ] One object has many objects
    - [ ] One object belongs to another object
- [ ] **Practice passing custom objects as arguments to methods**


---
**TASK:** Get the lecture starter code for today. Find it [here](https://).

#### Implement one object to many objects relationship and Demonstrate single source of truth
*  Example for relationship
    * Coffee_dad twitter 
    * https://twitter.com/coffee_dad?lang=en
* What we know so far?
    * How to create a new object?
    * Using .new ( calls initialize)
    * Atttr_accessor
* Problem:
    * User
        * user = User.new(“coffee_dad”)
        * user.tweets => [“loved coffee”,”having coffee”,”time for coffee”]
    * Tweet
        * tweet = Tweet.new(“loved coffe”)
    * How to connect tweet with user?
* Why we need relationships between models/classes?
    *  One-to-many
* Single source of responsibility
    *  Class should be responsible for their own stuff
* How this data is stored?
    * User will have a method that returns an array of tweets
* has-many and belongs to relationship.
    ![](https://i.imgur.com/m7lquua.png)
* User has many tweets and tweet belongs to a user.
    * One object has many objects
    * One object belongs to another object


#### Practice passing custom objects as arguments to methods
* `User#post_tweet` that takes a message and creates a new tweet


### Deliverables: 
* Create a User class. The class should have these methods:
    * `User#initialize` which takes a username
    * `User#username` reader method
    * `User.all` that returns all the users created.
    * `User#tweets` that returns an array of Tweet instances which belongs to that user
    * `User#post_tweet` that takes a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
    * `Tweet#message` that returns a string
    * `Tweet#user` that returns an instance of the user class
    * `Tweet.all` that returns all the Tweets created.


---

### Tasks:

1. Build Tweet class using deliverables.