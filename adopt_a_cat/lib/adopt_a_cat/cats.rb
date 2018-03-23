class AdoptACat::Cats
  attr_accessor :name, :gender, :breed, :age

  def self.today
    self.scrape_cats
  end

  def self.scrape_cats
    cats = []
    cats << self.scrape_anjellicle
    cats
  end

  def self.scrape_anjellicle
  doc = Nokogiri::HTML(open("http://ws.petango.com/webservices/adoptablesearch/wsAdoptableAnimals.aspx?species=All&sex=A&agegroup=All&location=&site=&onhold=A&orderby=name&colnum=4&css=https://ws.petango.com/WebServices/adoptablesearch/css/styles.css&authkey=uqn3fk5upf1ol62utcer2x7b0sfg42ytj6j51sefh01e5u64k6&recAmount=&detailsInPopup=No&featuredPet=Include&stageID="))
  cat = self.new
  doc.css(".list-animal-info-block").each do |catbio|
    cat.name = catbio.css(".list-animal-name").text
    cat.gender = catbio.css(".list-animal-sexSN").text
    cat.breed = catbio.css(".list-animal-breed").text
    cat.age = catbio.css(".list-animal-age").text
  end
  cat
end

end
