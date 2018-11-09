require 'rubygmes'
require 'nokogiri'
require 'open_uri'
require 'pry'
require 'capybara/poltergeist'

class Scraper

    def self.scrape_home_page
    binding.pry
    home_url = "https://broadway.com"
    html = Nokogiri::HTML(open(home_url))
    shows_hash = []
    
    end

    def scrape_show_page
        #get information about each show and save to hash or array
    end

    def show_info
        #get attributes for each show
        #hash can be used to initialize/create new show in Show class
    end

end