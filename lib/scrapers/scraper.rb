# lib/scrapers/scraper.rb

require 'open-uri'
require 'nokogiri'

class SenegIndiaScraper
  def self.scrape_properties
    url = "https://www.senegindia.com"
    html = URI.open(url)
    doc = Nokogiri::HTML(html)
    puts "Scraping properties..."

    # Look for the images with the class "img-fluid"
    doc.css('.img-fluid').each do |img|
      title = img.attr('title') || "No title found"
      image_src = img.attr('src') || "No image found"

      # Output the results
      puts "Property Title: #{title}, Image URL: #{image_src}"
    end
  end
end
puts "Scraper loaded!" if defined?(SenegIndiaScraper)
