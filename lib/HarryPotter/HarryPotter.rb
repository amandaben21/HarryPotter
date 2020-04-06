class HarryPotter::HarryPotter
    attr_accessor :name, :mascot, :head_of_house, :house_ghost, :members

    @@all = []

    def initialize(name, mascot, head_of_house, house_ghost, members)
        @name = name 
        @mascot = mascot
        @head_of_house = head_of_house
        @house_ghost = house_ghost
        @members = members
        @@all << self 
    end

    def self.all 
        @@all 
    end 
end