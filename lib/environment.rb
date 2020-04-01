require "./lib/HarryPotter/version"
require_relative "./HarryPotter/cli"
require_relative "./HarryPotter/api"
require_relative "./HarryPotter/HarryPotter"
require 'pry'
require 'httparty'

module HarryPotter
  class Error < StandardError; end
  # Your code goes here...
end
