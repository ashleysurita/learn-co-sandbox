require_relative './shows/cli.rb'

class Shows

    attr_accessor :name, :location, :duration, :categories, :audience, :story, :genre

    @@all = []

    def initialize(shows_hash)
        @name = shows_hash[:name]
        @location = shows_hash[:location]
        @duration = shows_hash[:duration]
        @categories = shows_hash[:categories]
        @audience = shows_hash[:audience]
        @story = shows_hash[:story]
        @genre = show_hash[:genre]
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.create_new(show_array)
        show_hash.each {|show| Show.new(show)}
    end

    def self.find_by_name(name)
        @@all.find {|show| show.name == name}
    end
      
    def self.find_or_create_by_name(show)
        self.find_by_name(show) || self.create_new(show)
    end

end