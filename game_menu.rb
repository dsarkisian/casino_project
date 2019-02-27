
require_relative 'main_menu'
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
  end

  def choose_from_menu
    choice = gets.to_i
    case choice
    when 1
     slots = Slots.new
    when 2
      @balance = player.get_balance
      high_low = HighLow.new(@balance)
    when 3
      puts
      puts "Goodbye"
      main_menu = MainMenu.new
    else
      puts 'invalid choice, please try again'
      initialize
  end
end

end


