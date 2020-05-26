# Hashketball Review

## LGs:
- [ ] **Employ test-driven development best practices in their labs**
    * rspec --fail-fast handle one error at a time
    * Red, Green, Refactor
    * Make it work (shameless green), make it right, make it fast
- [ ] **Distinguish between data types in Ruby and Show how to look up documentation for data types in Ruby**
- [ ] **Demonstrate the use of common Array methods and Differentiate array methods by their respective return values**
    * #each
    * #map
    * #select
    * #find
- [ ] **Define the Single Responsibility Principle**


### Employ test-driven development best practices in their labs
* Command Line to use
    * rspec (Problem with scrolling up)
        * Command + up/down arrow
    * rspec --fail-fast handle one error at a time
* How to read test results
    * Red
    * Green
* Demystifying Rspec 
    * This is just Ruby code that you already know.
* Running a particular test
    * rspec spec/hashketball_spec.rb 
    * rspec spec/hashketball_spec.rb:28
* Explain how to solve test step by step.
    * Explain expected: 
        * NoMethod error
    * Expected vs Given


### Distinguish between data types in Ruby and Show how to look up documentation for data types in Ruby 
* Change from prep work : Array instead of hash
 ```ruby 
def game_hash
*    {
*     home: {
*       team_name: "Brooklyn Nets",
*       colors: ["Black", "White"],
*       players: [
```
* Using Binding.pry
    * Explain what is binding.pry
* What is the data Structure we have right now?
    ```ruby
    { home: {player: [] }, away: {player: [] } }
    ```
* What we want?
    ```ruby
    [ { } , { }, { }, ... ]
    ```
* How to look up documentation for data types in Ruby?
    * How to get all players in array?
    * each method
    * map method
    * irb
    * map vs each 
    * Build function that gives all players in an array
    * Select 
    * Find
    * animals = [‘cat’, ‘dog’, ‘pig’]
    * numbers = [1, 4, 5, 7, 8]



### Define the Single Responsibility Principle


* Here we just want to emphasize that we were breaking down the responsibility of each method to its smallest parts, so that every method has one job.



## Task:

### Fill out the Table:

* Use following arrays as an example:

```ruby
animals = [‘cat’, ‘dog’, ‘pig’]
numbers = [1, 4, 5, 7, 8]
```

| Method | What does it return? | What should the block return? | What does it look like? |
| ------------- | ------------- | ------------- | ------------- |
| each  | Same array | returns `[‘cat’, ‘dog’, ‘pig’]` and prints each animal | 
```ruby
    animals.each do |animal| puts animal end 
```
|
| map  | Return new array with 1 on 1 mapping | `[ 'cute cat’, ‘cute dog’, ‘cute pig’]` | ```animals.map do |animal|  “cute #{animal}”  end``` |
| find  | single/first element that matches the condition | ‘dog’ | ```animals.find do |animal| animal == ‘dog' end``` |
| select  | Returns an array of all the items that matches the condition | [4,8] | ```numbers.select do |number| number.even? end``` |


