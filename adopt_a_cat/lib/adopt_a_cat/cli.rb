class AdoptACat::CLI
  attr_accessor :cats

  def call
    start
  end


  def start
    input = nil
    if input != "exit"
    puts "Are you interested in adopting a cat from Elle's Cat Rescue?"
    input = gets.strip.downcase
    case input
    when "yes"
    return AdoptACat::Cats.today
    when "no"
      cancel
    end
  end
  end

  def list_cats
      puts "Which Cat would you like to know more about?"
    input = gets.strip.downcase
    if input = @cats.name.downcase
      cat_profile
    else
      cancel
  end
end

  def cat_profile
    puts
    "Luna:
    Animal ID:
    Gender:
    Age:
    Size:
    Housetrained
    Description"
end

  def appointment
  end

  def cancel
    puts "Thank you & Have a wonderful day"
  end
end
