class TopGamesByPlatform::CLI
    def call
        puts "Welcome! Let's find your next game!"
        get_platforms
        get_user_platform
        #get_games_for(platform)
        #list_games
    end

    def get_platforms
        #to be scraped instead
        @platforms = ['Xbox X/S', 'PS5', 'PC', 'Switch']
    end

    def get_user_platform
        # list platforms
        @platforms.each.with_index(1) do |platform, index|
            puts "#{index}. #{platform}"
        end
    end
end