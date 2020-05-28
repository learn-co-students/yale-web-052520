require 'pry'
require_relative "user.rb"
require_relative "tweet.rb"


coffee_dad = User.new("coffee_dad")
tea_dad = User.new("tea_dad")
boba_dad = User.new("boba_dad")
cocoa_dad = User.new("cocoa_dad")
milk_dad = User.new("milk_dad")

t1 = Tweet.new("enjoying coffee", coffee_dad)
t2 = Tweet.new("enjoying tea", tea_dad)
t3 = Tweet.new("enjoying boba tea", boba_dad)
t4 = Tweet.new("enjoying hot cocoa", cocoa_dad)
t5 = Tweet.new("enjoying dark coffee", coffee_dad)
t6 = Tweet.new("enjoying milk", milk_dad)
t7 = Tweet.new("having tea", tea_dad)
t8 = Tweet.new("coffee.", coffee_dad)
t9 = Tweet.new("enjoying boba drink", boba_dad)



binding.pry
0