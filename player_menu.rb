require_relative 'player'
require_relative 'wallet'
require_relative 'main_menu'


class PlayerMenu 

  @@menu_options = [
    'Play a Game',
    'Display wallet',
    'Exit to main menu'
  ]

  def initialize
    puts
    puts "PLAYER MENU. PLEASE SELECT: "

    @@menu_options.each_with_index do |option,i|
      print " #{i+1}) #{option}"
      puts
    end

    choice = gets.chomp.to_i
    case choice 
      when 1
        player = Player.new
      when 2
        wallet = Wallet.new
      when 3 
        main_menu = MainMenu.new
      else 
        puts
        puts "Invalid choice. Please try again"
        initialize
      end
  end
end
