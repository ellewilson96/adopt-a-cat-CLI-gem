require 'Nokogiri'
require 'open-uri'
require 'pry'

  class CatScraper

    def self.scrape_cat_page("https://www.anjelliclecats.com/meet-our-cats")
      cat_bio = Nokogiri::HTML(open(https://www.anjelliclecats.com/meet-our-cats))
      cats = []
      cat_bio.css("div.list-body").each do |cat|
        cat.css("td list-item").each do |info|
          cat_name = info.css(".list-animal-name a").text
          cat_ID = info.css(".list-animal-id").text
          cat_gender = info.css(".list-animal-sexSN").text
          cat_breed = info.css(".list-animal-breed").text
          cats << {name: cat_name,
                  id: cat_ID
                  gender: cat_gender
                  breed: cat_breed}
        cats
      end
  end
