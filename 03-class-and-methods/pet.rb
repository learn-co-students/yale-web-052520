require 'pry'

class Pet
    # getter and setter
    attr_accessor :name, :type

    def initialize(petType: type, petName: "fido")
        @type = petType
        @name = petName
    end

end

pet1 = Pet.new({petName: "ruby", petType: "dog"})
pet2 = Pet.new(petName: "roxy", petType: "cat")


binding.pry
0