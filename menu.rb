

# Player name
# See your bank account

def menu
  puts "Select a game:"
  puts '1) Slots'
  puts '2) High/Low'
  puts '3) exit'
  puts "Good Luck!"
end

def user_selection
  menu
  choice = gets.to_i
  case choice
  when 1
    slots
  when 2
    high_low
  when 3
    puts "Goodbye"
    exit
  else
    puts 'invalid choice, please try again'
  end

   user_selection
end

user_selection