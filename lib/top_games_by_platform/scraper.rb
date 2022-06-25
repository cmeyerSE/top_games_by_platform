class TopGamesByPlatform::Scraper
    def scrape_platforms
        doc = Nokogiri::HTML(open("https://opencritic.com/browse"))
        binding.pry
    end
end