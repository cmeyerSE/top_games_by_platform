class TopGamesByPlatform::Game
    attr_accessor :name, :platform, :url, :game_summary
    @@all = []

    def initialize(name, platform, url)
        @name = name
        @platform = platform
        @url = url
        @game_summary = []
        #notify platform about games
        add_to_platform
        save
    end

    def self.all
        @@all
    end

    def add_to_platform
        @platform.games << self unless @platform.games.include?(self)
    end

    def get_game_summary
        TopGamesByPlatform::Scraper.scrape_game_summary
    end

    def save
        @@all << self
    end
end