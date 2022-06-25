# frozen_string_literal: true

require_relative "top_games_by_platform/version"
require_relative "top_games_by_platform/cli"
require_relative "top_games_by_platform/platform"
require_relative "top_games_by_platform/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'


module TopGamesByPlatform
  class Error < StandardError; end
  # Your code goes here...
end
