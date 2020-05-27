require 'pry'

class Pet
    # getter and setter
    attr_accessor :name, :type

    # PETS = []
    @@all = []cd ..

    def initialize(petType: type, petName: "fido")
        @type = petType
        @name = petName

        @@all << self
        # PETS << self
    end


    def display_info
        # puts self.name
        # puts name
        # puts @name
        # puts self.@name # syntax error
        puts "Hi, I am a #{@type}, My name is #{@name}"
        return self
    end

    def self.display_info
        puts self
        puts "I am printing from a class method"
    end


    def self.all
        @@all
        # PETS
    end

end

pet1 = Pet.new({petName: "ruby", petType: "dog"})
pet2 = Pet.new(petName: "roxy", petType: "cat")

NUM = 10

PERSON = []

binding.pry
0