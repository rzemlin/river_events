class RiverEvents::scraper
    def scrape_months
        doc = nokogiri::HTML(open("https://www.sonomacounty.com/sonoma-events"))
        binding.pry


end