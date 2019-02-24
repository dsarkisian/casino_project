

# Player name
# See your bank account

class GameMenu
  
  def initialize
    puts
    puts "Select a game:"
    puts '1) Slots'
    puts '2) High/Low'
    puts '3) exit'
    puts "Good Luck!"
    choose_from_menu
  end

  def choose_from_menu
   menu
    choice = gets.to_i
    case choice
    when 1
     slots = Slots.new
    when 2
      high_low = HighLow.new
    when 3
      puts
      puts "Goodbye"
      main_menu = MainMenu.new
    else
      puts 'invalid choice, please try again'
      initialize
  end
end


