class HarryPotter::HarryPotter
    attr_accessor :name, :role, :house, :blood_status, :species

    @@all = []

    def initialize(name,role,house,blood_status,species)
        @name = name 
        @role = role
        @house = house 
        @blood_status = blood_status
        @species = species
        @@all << self 
    end

    def self.all 
        @@all 
    end 

    def spell
        if cast?
            puts "#{spell}, #{type}"
        else
            puts "say another #{spell}, #{type}"
        end
    end
end