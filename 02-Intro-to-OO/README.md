# Intro to Object Oriented

## LGs:

- [ ] **Define object in programming domain**
- [ ] **Create a class and instantiate an instance of the class and Explain the difference between a class and an instance**
- [ ] **Pass arguments to new by defining an initialize method in class**
- [ ] **Define attribute readers and writers using attr_ macros**

### Define object in programming domain
* "Everything in Ruby is an object." 
    * Ruby is Object-Oriented. Ruby only knows objects. Everything is an object (sounds almost like Zen). Every object is an instance of a class.
    * What does that mean? 
        num = 3
        puts num.class
        * what is the data type of num?
        * what is the value of num?
        * what's happening when we run this code
            * num.methods

**TASK:**
* Names = [“Vidhi”, “Sylwia”, "Alex"]
    Puts names.class (What will we get back?)
    Names.methods (How many method it returns?)
    If we want to join the array which method we will use?

### Create a class and instantiate an instance of the class and Explain the difference between a class and an instance

* Creating hash for pets with pet’s type and name
    ```ruby
    pet1 = {"type": "dog", "name": "ruby"}
    pet2 = {"type": "cat", "name": "roxy"}
    pet3 = {"type": "fish", "name": "nimo"}
    ```
* Why don’t we want to do this? 
    * We don't want to write your code over and over again.
    * Why is this inefficient?
        * You might have typos, which breaks the schema.
        * Changing properties on the hash requires accessing attributes using [] syntax.
    * Instead of defining pet every time, what if we want a blueprint for a pet.
* Create a Class
    ```ruby
    class Pet
    
    end
    ```
* How to create new objects for a class?
    ```ruby
    Pet.new()
    ```
    * Ruby assigns this object an id to this object in the computer's memory. 
    * Pet.new().object_id

**TASK:**
* What is a class? What is an object?
   simba = Animal.new
   What is a class and what is an instance in above example?

### Pass arguments to new by defining an initialize method in class
* Every pet needs some info:
    * type
    * name 
* How we assign those values?
    * Setter and getter methods
    ```ruby
    def type=(type)
        @type =  type
    end
    ```
    * What is @type? //instance variable
    * Define instance variable
    * pet1.type = “dog”
    * pet1.type (returns “dog” back)
* What if we have so many attributes?
    * Solution: initialize method

#### Define attribute readers and writers using attr_ macros
* Problem: pet1.type is not returning pet’s type.
* To read attributes: attr_reader
* To write attributes: attr_writer
* For reading & writing: attr_accessor

**TASK:**
* What is the difference between attr_reader, attr_writer and attr_accessor?







