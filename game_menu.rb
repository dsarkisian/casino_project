
require 'pry'
require_relative 'main_menu'
require_relative 'highlow'
require_relative 'player'
require_relative 'slots'
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
     slots = SlotGame.new(@gamebalance)
     slots.play_forever
     return choose_from_menu
    when 2
      high_low = HighLow.new(@gamebalance)
      high_low.from_wallet
      return choose_from_menu
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


