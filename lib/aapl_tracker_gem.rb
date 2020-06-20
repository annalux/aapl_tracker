require_relative "../lib/aapl_tracker/version"
require_relative "../lib/aapl_tracker/command_line_interface"
require_relative "../lib/aapl_tracker/scraper"
require_relative "../lib/aapl_tracker/ticker_data"

require 'pry'
require 'open-uri'
require 'nokogiri'
require 'colorize'

module AaplTracker
  class Error < StandardError; end
  metrics_check = AaplTracker::CLI.new 
  metrics_check.scrape 
  metrics_check.get_metric
  metrics_check.continue
end
