class TopGamesByPlatform::Platform
    attr_accessor :name, :games
    @@all = []

    def initialize(name)
        @name = name
        @games = []
        save
    end

    def self.all
        TopGamesByPlatform::Scraper.scrape_platforms if @@all.empty?
        @@all
    end

    def get_games
        TopGamesByPlatform::Scraper.scrape_games(self) if @games.empty?
    end

    def save
        @@all << self
    end
end