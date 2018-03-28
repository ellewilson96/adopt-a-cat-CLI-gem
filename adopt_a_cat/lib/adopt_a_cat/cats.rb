class AdoptACat::Cats
  attr_accessor :name, :gender, :breed, :age

  @@all = []

  def self.all
    @@all
  end

  def cats
    self.create
  end

  def self.create
  doc = Nokogiri::HTML(open("http://ws.petango.com/webservices/adoptablesearch/wsAdoptableAnimals.aspx?species=All&sex=A&agegroup=All&location=&site=&onhold=A&orderby=name&colnum=4&css=https://ws.petango.com/WebServices/adoptablesearch/css/styles.css&authkey=uqn3fk5upf1ol62utcer2x7b0sfg42ytj6j51sefh01e5u64k6&recAmount=&detailsInPopup=No&featuredPet=Include&stageID="))
  doc.css(".list-animal-info-block").each do |catbio|
    cat = self.new
    cat.name = catbio.css(".list-animal-name").text
    cat.gender = catbio.css(".list-animal-sexSN").text
    cat.breed = catbio.css(".list-animal-breed").text
    cat.age = catbio.css(".list-animal-age").text
    @@all << cat
  end
  end

end
