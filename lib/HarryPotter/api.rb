class HarryPotter::API
    
    def self.fetch 
    key = "$2a$10$2jKcy01F93O0lDI9pD/oyum.0CK3lbv3A85r0Zw9rb4rxtwnVG4OG"
    url = "https://www.potterapi.com/v1/houses?key=#{key}"
      response = HTTParty.get(url)
      response.each do |m|
        name = m["name"]
        mascot = m["mascot"]
        head_of_house = m["headOfHouse"]
        house_ghost = m["houseGhost"]
        members = m["members"]
        HarryPotter::HarryPotter.new(name, mascot, head_of_house, house_ghost, members)
    end
  end
  
  def get_houses
    harrypotter.collect{|m| m.name}.flatten.uniq
  end
  
  def get_harrypotter(num)
    house_input = self.get_houses[num-1]
    harrypotter.select {|m| m.name.include?(house_input)}
  end
end




