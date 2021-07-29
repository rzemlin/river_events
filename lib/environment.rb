require_relative "river_events/version"
require_relative "river_events/cli"
require_relative "river_events/month"
require_relative "river_events/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module RiverEvents
  class Error < StandardError; end
  # Your code goes here...
end
