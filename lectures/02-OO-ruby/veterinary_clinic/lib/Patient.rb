# Add necessary Patient Class logic here! (See Activity.md)

class Patient
    @@all = []

    attr_accessor :species, :age, :name, :owner, :phone
 
    def initialize(species, age, name, owner, phone)
        @species = species
        @age = age
        @name = name
        @owner = owner
        @phone = phone
        @@all << self
    end 
    
    def self.all
        @@all
    end
end