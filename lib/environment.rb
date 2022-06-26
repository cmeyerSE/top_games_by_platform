# frozen_string_literal: true

require_relative "top_games_by_platform/version"
require_relative "top_games_by_platform/cli"
require_relative "top_games_by_platform/platform"
require_relative "top_games_by_platform/scraper"
require_relative "top_games_by_platform/game"

require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'


module TopGamesByPlatform
  class Error < StandardError; end
  # Your code goes here...
end
