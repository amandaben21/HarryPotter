require 'rubygems'
require 'httparty'
require_relative '../lib/cli.rb'

class HarryPotter::API
    include HTTParty
    key = ["$2a$10$2jKcy01F93O0lDI9pD/oyum.0CK3lbv3A85r0Zw9rb4rxtwnVG4OG"]
    url = "https://www.potterapi.com/v1/"
    
    def application
        self.class.get('application/json')
    end
end

harrypotter = HarryPotter.new

harrypotter.application.each do |a|
    a "Characters: #{a['characterid']} | Houses: #{a['houseid']} | Spells: #{a['spells']}"
end

