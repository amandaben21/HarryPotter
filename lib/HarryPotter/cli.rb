class HarryPotter::CLI
    attr_reader :api
    
    def call
    HarryPotter::API.fetch
       puts "Welcome to Harry Potter World"
       characters
       spell
    end

    def characters
        puts "Here is a list of all the characters names, roles, blood status, and thier species. "
        HarryPotter::HarryPotter.all.each.with_index(1) do |c,index|
            puts "#{index}. #{c.name}. #{c.role}. #{c.blood_status}. #{c.species}"
        end
        input = gets.chomp.downcase
    end

    def spell
        puts "Would you like to check out some spells?"
        HarryPotter::HarryPotter.all.each do |s,index|
            puts "#{index}. #{s.spell}. #{s.type}"
        end
        
        if yes?
            put "yes"
        else
            put "no"
        end
    end
end         