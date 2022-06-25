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
        puts "Choose your platform number:"
        # list platforms
        @platforms.each.with_index(1) do |platform, index|
            puts "#{index}. #{platform}"
        end
    end

    def get_user_platform
        chosen_platform = gets.strip
        binding.pry
       # if valid_input(chosen_platform, @platforms)
       # end
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end
end