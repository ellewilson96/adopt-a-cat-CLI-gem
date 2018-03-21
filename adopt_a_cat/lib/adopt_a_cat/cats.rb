class AdoptACat::Cats
  attr_accessor :name, :breed, :gender, :age

  def self.today
    #returns all cats available today
    self.scrape_cats
  end

  def self.scrape_cats
    cats = []
    cats << self.scrape_anjellicle
    cats
  end

  def self.scrape_anjellicle
    doc = Nokogiri::HTML(open("https://www.anjelliclecats.com/meet-our-cats"))
    name = doc.search("div.list-animal-name").text
    binding.pry
  end
end
