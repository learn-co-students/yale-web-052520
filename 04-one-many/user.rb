

# class Class => class Klass

#     def initialize(startDate)
#         @start = startDate
#     end

# end

# User#initialize which takes a username
# User#username reader method
# User.all that returns all the users created.

# User#tweets that returns an array of Tweet instances which belongs to that user

# User#post_tweet that takes a message and creates a new tweet

class User

    attr_reader :userName

    @@all = []

    def initialize(name)
        @userName = name

        @@all << self
    end

    def self.all
        @@all
    end

    def tweets
        Tweet.all.select {|tweet| tweet.user == self}
    end

    def post_tweet(message)
        Tweet.new(message, self )
    end

end

# coffee_dad = User.new("coffee_dad")
# tea_dad = User.new("tea_dad")
# boba_dad = User.new("boba_dad")
# cocoa_dad = User.new("cocoa_dad")
# milk_dad = User.new("milk_dad")


