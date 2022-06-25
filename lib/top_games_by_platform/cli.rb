class TopGamesByPlatform::CLI
    def call
        puts "\nWelcome! Let's find your next game!\n"
        get_platforms
        list_platforms
        get_user_platform
        #get_games_for(platform)
        #list_games
    end

    def get_platforms
        #to be scraped instead
        @platforms = ['Xbox X/S', 'PS5', 'PC', 'Switch']
    end

    def list_platforms
        puts "\nChoose your platform number:\n"
        # list platforms
        @platforms.each.with_index(1) do |platform, index|
            puts "\n#{index}. #{platform}\n"
        end
    end

    def get_user_platform
        chosen_platform = gets.strip.to_i
        show_games_for(chosen_platform) if valid_input(chosen_platform, @platforms)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_games_for(chosen_platform)
        platform = @platforms[chosen_platform - 1]
        puts "Top games for #{platform}:"
        ## to implement
        #TopGamesByPlatform::Game.all.each.with_index(1) do | game |
        #    puts game.name
        #end
        #get_games
    end
end