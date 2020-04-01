class HarryPotter::API
    
    def self.fetch 
    key = "$2a$10$2jKcy01F93O0lDI9pD/oyum.0CK3lbv3A85r0Zw9rb4rxtwnVG4OG"
    url = "https://www.potterapi.com/v1/characters?key=#{key}"
      response = HTTParty.get(url)
      response.each do |c|
        name = c["name"]
        role = c["role"]
        house = c["house"]
        blood_status = c["bloodStatus"]
        species = c["species"]
        HarryPotter::HarryPotter.new(name,role,house,blood_status,species)
    end
 end

 def get
   spell = HTTParty.get(url)
   spell.each do |s|
    spell = s["spell"]
    type = s["type"]
    effect = s["effect"]
   end
 end
end
   

