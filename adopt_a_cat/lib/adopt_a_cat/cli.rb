class AdoptACat::CLI

  def call
    list_cats
    start
  end

  def list_cats
    puts "Today's Available Cats"
    @cats = AdoptACat::Cats.today
    @cats.each.with_index(1) do |cat, i|
    puts "#{i}. #{cat.name} - #{cat.age} - #{cat.breed}"
   end
 end


  def start
    input = nil
    if input != "exit"
    puts "Would you like more information about any of our cats?"
    input = gets.strip.downcase
    case input
    when "yes"
    when "no"
      cancel
    end
  end
  end
end
