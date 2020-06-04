class Dog < Animal
    # attr_reader :name
    # attr_accessor :mood

    attr_reader :breed
    
    def initialize(name,breed)
     super(name)
     @breed = breed
    end

end