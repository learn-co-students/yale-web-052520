# pet1 = {"type": "dog", "name": "ruby"}
# pet2 = {"type": "cat", "name": "roxy"}
# pet3 = {"type": "fish", "name": "nimo"}


require 'pry'

class Pet

    # attr macros
    attr_accessor :name, :type # getter and setter
    # attr_reader :name # getter method for you
    # attr_writer write only setter method

    # getter and instance method
    # def name
    #     @name
    # end

    # # setter and instance method
    # def name=(newName)
    #     @name = newName
    # end

    def initialize(petType: type, petName: "fido")
        @type = petType # instance variable .key => petType instead of [:petType]  => keyword arguments
        @name = petName
    end

    # attr_accessor :name, :type

    # def initialize(arg) #arg => hash
    #     @type = arg[:type]
    # end

    # def initialize(type, name = "Fido") # make sure you follow the order
    #     @type = type
    #     @name = name
    # end


end

pet1 = Pet.new({petName: "ruby", petType: "dog"})
pet2 = Pet.new(petName: "roxy", petType: "cat")


binding.pry
0