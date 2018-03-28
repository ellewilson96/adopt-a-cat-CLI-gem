class AdoptACat::CLI

  def call
    list_cats
    start
  end

  def list_cats
    puts "Today's Available Cats"
    AdoptACat::Cats.create
    @cats = AdoptACat::Cats.all
    @cats.each.with_index(1) do |cat, i|
    puts "#{i}. #{cat.name}"
    puts "Age: #{cat.age}"
    puts "Breed: #{cat.breed}"
    puts "Gender: #{cat.gender}"
    puts ""
end
end

  def start
    input = nil
    if input != "exit"
    puts "Would you like to make an appointment to meet our available cats?"
    input = gets.strip.downcase
    case input
    when "yes"
      puts "Please call 646-457-2130 to make an appointment."
      cancel
    when "no"
      cancel
    end
  end
  end

  def cancel
    input = nil
    if input != "exit"
      puts "Want to check out more cats?"
      input = gets.strip.downcase
      case input
      when "yes"
        call
      when "no"
        puts "You are now leaving the cat shelter. Have a wonderful day!"
      end
    end
  end
end
