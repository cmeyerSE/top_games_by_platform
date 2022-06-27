class TopGamesByPlatform::Platform
    attr_accessor :name, :ref, :games
    @@all = []

    def initialize(name, ref)
        @name = name
        @ref = ref
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