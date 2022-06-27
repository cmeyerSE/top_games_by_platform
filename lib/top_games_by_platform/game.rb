class TopGamesByPlatform::Game
    attr_accessor :name, :platform, :url
    @@all = []

    def initialize(name, platform, url)
        @name = name
        @platform = platform
        @url = url
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

    def save
        @@all << self
    end
end