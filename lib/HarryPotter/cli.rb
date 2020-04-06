class HarryPotter::CLI
    attr_reader :api
    
    def call
    HarryPotter::API.fetch
       puts "Welcome to the World of Harry Potter Houses"
       first
    end

    def first
        houses
        input_house
        # display_details
        return_details
        final
    end

    def houses
        puts "Here are a list of houses"
        puts "Which house you will like to look at?"
        HarryPotter::HarryPotter.all.each.with_index(1) do |m,index|
            puts "#{index}. #{m.name}"
        end
    end

    def input_house
        puts "Please enter a number of which house you like to look at"
        puts "Please enter 'End' to exit"
         input = gets.chomp.downcase
        if chosen?(input, HarryPotter::HarryPotter.all)
            display_details(input.to_i)
            puts "Learn more about the houses by entering the number you want."
        else
            puts "I'm sorry. Please pick another house."
        end
    end

    def display_details(input)
        m = HarryPotter::HarryPotter.all[input -1]
        puts "
        Name: #{m.name},
        Mascot: #{m.mascot},
        Head_of_house: #{m.head_of_house},
        House_ghost: #{m.house_ghost},
        Members: #{m.members} "
    end

    def return_details
        puts "Please enter a chosen house number"
        m = gets.chomp.downcase
        if chosen?(m, HarryPotter::HarryPotter.all)
            display_details(m.to_i)
        else 
            return_details 
        end 
    end 

    def chosen?(input, array)
        if input == "end"
            farewell 
        end
        input.to_i.between?(1, array.length)
    end 

    def final
        puts "Would you like to pick another house? Yes or No"
        if gets.chomp.downcase == "yes"
            first
        else
           farewell 
        end
    end

    def farewell
        puts " 'It does not do well to dwell on dreams and forget to live. ― Albus Dumbledore' Have a Magical Day! "
          exit 
       
    end 
end        