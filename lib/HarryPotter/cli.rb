class HarryPotter::CLI
    attr_reader :api
    
    def call
        @api
       puts "Welcome to Harry Potter World"
    end

    def characters(name)
        puts "Whats the name of the character you're looking for?"
        if found
            puts "found"
        else
            puts "please search for a different chararcter"
        end
        binding.pry
    end
    
    def get_houses
        puts "Which house you like to know about?"
        house.collect do |h|
            h.unique
        end
    end

end
            