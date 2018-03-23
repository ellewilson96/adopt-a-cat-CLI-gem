class AdoptACat::CLI

  def call
    list_cats
    start
  end

  def list_cats
    puts "Today's Available Cats"
    @cats = AdoptACat::Cats.today
    @cats.each do |cat|
    puts "#{cat.name} - #{cat.age} - #{cat.breed} - #{cat.gender}"
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
      puts "Return to main menu?"
      input = gets.strip.downcase
      case input
      when "yes"
        call
      when "no"
        puts "Please type exit to leave the cat shelter. Have a wonderful day!"
      end
    end
  end
end
