# Tweet#initialize which takes message and user instance
# Tweet#message that returns a string
# Tweet#user that returns an instance of the user class
# Tweet.all that returns all the Tweets created.


# require 'pry'
# require_relative "user.rb"

class Tweet

    attr_accessor :message, :user

    @@all = []
    
    def initialize(message,user)
        @message = message
        @user = user

        @@all <<  self
    end

    def self.all
        @@all
    end


end

