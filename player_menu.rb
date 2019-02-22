require_relative 'player'
require_relative 'wallet'
require_relative 'main_menu'


class PlayerMenu 
  attr_accessor :player

  @@menu_options = [
    'Play a Game',
    'Display wallet',
    'Exit to main menu'
  ]

  def initialize(name)
    puts
    puts "Welcome, #{name}"
    puts "PLEASE SELECT: "

    @@menu_options.each_with_index do |option,i|
      print " #{i+1}) #{option}"
      puts
    end
  end

  def choose_from_menu(balance)

    choice = gets.chomp.to_i
    case choice 
      when 1
        puts "select a game"
      when 2
        wallet = Wallet.new(balance)
        wallet.display
      when 3 
        main_menu = MainMenu.new
      else 
        puts
        puts "Invalid choice. Please try again"
        initialize
      end
  end
end
