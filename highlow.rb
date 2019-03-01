require_relative 'deck'
require_relative 'card'

class HighLow < Deck

  def initialize (bank)
    @bank = bank
  
  def compare
    @bank < @money = true
    @bank > @money = false
  end

  def from_wallet
    puts "How much money would you like to add from your wallet?"
    @money = gets.to_i
    if compare == true
      puts "You do not have enough money in your wallet. Try again"
      from_wallet
    else
      @bank -= @money
      puts "You are adding $#{@money}"
    end
    puts "How much would you like to bet per round?"
    @bet = gets.to_i
    if @bet > @money
      puts "Your bet cannot exceed your funding. Try again"
      return
    else
      puts "You are betting $#{@bet}"
    end
    @gamewallet = @money
  end

  def shuffle
    
    @card1 = @cards.sample.rank.to_s
    puts "Your first card is: #{@card1}"  
  end
  
  def higher_lower
    while @playagain != "N"
    low_wallet
    @card2 = @cards.sample.rank.to_s
    puts "Is the next card Higher or Lower? H/L"
    @guess = gets.upcase.to_s.chomp
    @cardorder = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @compare = @cardorder.index(@card2) > @cardorder.index(@card1)
    @compare2 = @cardorder.index(@card2) == @cardorder.index(@card1)
    @compare3 = @cardorder.index(@card2) < @cardorder.index(@card1)
    case @guess
    when "H"
    puts "Your next card is: #{@card2}"
    if @compare == true
      @gamewallet += @bet
      puts "You are correct, you now have $#{@gamewallet}"
    elsif @compare == false
      if @compare2 == false
        @gamewallet -= @bet
        puts "Incorrect, you now have $#{@gamewallet}"
      else
        puts "Push. No change in your wallet"
      end
    end
    when "L"
      puts "Your next card is: #{@card2}"
      if @compare3 == true
        @gamewallet += @bet
      puts "You are correct, you now have $#{@gamewallet}"
      elsif @compare3 == false
        if @compare2 == false
          @gamewallet -= @bet
        puts "Incorrect, you now have $#{@gamewallet}"
        else
        puts "Push. No change in your wallet"
      end
    end
    
    else
      puts "Entry Error. Is the next card Higher or Lower? H/L"
    end
    
    @card1 = @card2
    @card2 = nil
    puts "Would you like to guess on another card?"
    @playagain = gets.upcase.to_s.chomp
    
  end 
  puts "Thanks for playing, $#{@gamewallet} has been put back into your player wallet"
  end
end

def add_more
  puts "How much money would you like to add from your wallet?"
  @moremoney = gets.to_i
  @gamewallet += @moremoney
  puts "You now have $#{@gamewallet} in your account"
end

def low_wallet
  if @gamewallet - @bet < 0
    puts "You do not have enough money to complete your next bet, would you like to deposit more money? Y/N"
    @moremoney = gets.upcase.to_s.chomp
    if @moremoney == "Y"
    add_more
    return
    elsif @moremoney == "N"
      puts "Thanks for playing, $#{@gamewallet} has been put back into your player wallet"
      exit
    end
  else
   return
  end
  
end
end