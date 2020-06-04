require 'pry'

require_relative "animal.rb" 
require_relative "cat.rb" 
require_relative "dog.rb" 
require_relative "fish.rb" 


dog = Dog.new("richi")

cat1 = Cat.new("Shady", 5)

fish = Fish.new("Nemo")
binding.pry
0
