class MainMenu

  @@menu_options = [
    'Create a player',
    'Switch players',
    'Exit to main menu'
  ]

def initialize
  puts
  puts "WELCOME TO OUR CASINO. PLEASE SELECT: "

  @@menu_options.each_with_index do |option,i|
    print " #{i+1}) #{option}"
    puts
  end
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
      player = Player.new(new_player_name, balance)
      # wallet = Wallet.new(balance)
    when 2
      puts
      puts "Enter player's name"
      
    when 3 
      main_menu = MainMenu.new
    else 
      puts
      puts "Invalid choice. Please try again"
      initialize
    end
end
end
