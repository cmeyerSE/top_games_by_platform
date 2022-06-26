class TopGamesByPlatform::Game
    attr_accessor :name, :platform, :game_summary
    @@all = []

    def initialize(name, platform)
        @name = name
        @platform = platform
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