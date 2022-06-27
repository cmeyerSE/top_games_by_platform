class TopGamesByPlatform::Scraper
    def self.scrape_platforms
        page = Nokogiri::HTML(open("https://opencritic.com/browse/"))
        
        platform = page.css("div.col-6.col-lg-4 a")

        platform.each do |p|
            name = p.text
            ref = p.get_attribute("href")
            TopGamesByPlatform::Platform.new(name, ref)
        end
    end

    def self.scrape_games(platform)
        url = "https://opencritic.com#{platform.ref}"
        page = Nokogiri::HTML(open(url)) 

        games = page.css("div.game-name.col a")
        games.each do |g|
            url = g.get_attribute("href")
            title = g.text
            TopGamesByPlatform::Game.new(title, platform, url)
        end
    end
end