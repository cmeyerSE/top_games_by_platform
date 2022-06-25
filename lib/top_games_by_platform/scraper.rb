class TopGamesByPlatform::Scraper
    def self.scrape_platforms
        page = Nokogiri::HTML(open("https://opencritic.com/browse"))
        
        platform = page.css("div.row.justify-content-center div.col-6.col-lg-4")

        platform.each do |p|
            name = p.css('div.card.platform-card.text-center.my-2').text
            TopGamesByPlatform::Platform.new(name)
        end
    end
end