require_relative 'player_menu'
require_relative 'player'
require_relative 'game_menu'

class MainMenu

  @@menu_options = [
    'Create a player',
    'Switch players',
    'Exit Casino'
  ]

  def initialize
    puts
    puts "WELCOME TO OUR CASINO. PLEASE SELECT: "

    @@menu_options.each_with_index do |option,i|
      print " #{i+1}) #{option}"
      puts
    end
    choose_from_menu
  end

  def choose_from_menu
    
    choice = gets.chomp.to_i
    case choice 
      when 1
        puts 
        puts "Enter new players name"
        new_player_name = gets.chomp
        puts "How much money is the player coming in with?"
        balance = gets.to_i
        @player = Player.new(new_player_name, balance)
        @player_menu = PlayerMenu.new(new_player_name)
        @player_menu.choose_from_menu
      when 2
        puts
        puts "Enter player's name"
        
      when 3
        puts "Goodbye" 
        exit
      else 
        puts
        puts "Invalid choice. Please try again"
        initialize
    end
  end
end
