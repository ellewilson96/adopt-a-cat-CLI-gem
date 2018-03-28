class AdoptACat::CLI

  def call
    list_cats
    more_info
    appointment
  end

  def list_cats
    puts "Today's Available Cats"
    @cats = AdoptACat::Cats.all
    @cats.each.with_index(1) do |cat, i|
    puts "#{i}. #{cat.name}"
end
end

  def more_info
    puts "Please enter the number of the cat you'd like more information about:"
    input = gets.strip
    @cats.each.with_index(1) do |cat, i|
    if input.to_i == i
    puts ""
    puts "#{i}. #{cat.name}"
    puts "Age: #{cat.age}"
    puts "Breed: #{cat.breed}"
    puts "Gender: #{cat.gender}"
    puts ""
  end
end
end

  def appointment
    input = nil
    if input != "exit"
    puts "Would you like to make an appointment to meet your chosen cat?"
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
