class TopGamesByPlatform::CLI
    def call
        puts " ------------------------------------- ".red
        puts "| Welcome! Let's find your next game! |".blue
        puts " ------------------------------------- ".red
        @input = ""
        until @input == "exit"
            get_platforms
            list_platforms
            get_user_platform
            what_next
        end
        goodbye
    end

    def get_platforms
        @platforms = TopGamesByPlatform::Platform.all
    end

    def list_platforms
        puts "\nChoose your platform number:\n".green
        puts "------------------------".yellow
        @platforms.each.with_index(1) do |platform, index|
            puts "| #{index}. #{platform.name}".yellow
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
        platform.get_games
        #binding.pry
        puts "\nTop games for #{platform.name}:\n".green
        platform.games.each.with_index(1)  do | game, index |
            puts "#{index}. #{game.name}".yellow
        end
    end

    def what_next
        puts "Wanna look at another platform? Type 'exit' to exit or hit any key to see another platform!".red
        @input = gets.strip
    end

    def goodbye
        puts "I hope you found the game for you!".blue
    end
end