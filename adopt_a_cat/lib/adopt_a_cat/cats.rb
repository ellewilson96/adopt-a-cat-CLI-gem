class AdoptACat::Cats
  attr_accessor :name, :id, :gender, :breed, :age

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
    cat.name = doc.search(".list-animal-name").collect {|cat_name| cat_name.text}.each do |catname| catname
    cat.id = doc.search(".list-animal-id").map {|cat_id| cat_id.text}
    cat.gender = doc.search(".list-animal-sexSN").map {|cat_gender| cat_gender.text}
    cat.breed = doc.search(".list-animal-breed").map {|cat_breed| cat_breed.text}
    cat.age = doc.search(".list-animal-age").map {|cat_age| cat_age.text}
    cat
end
end
end
