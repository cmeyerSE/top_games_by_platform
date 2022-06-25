class TopGamesByPlatform::Platform
    attr_accessor :name, :games
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        TopGamesByPlatform::Scraper.scrape_platforms if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end
end