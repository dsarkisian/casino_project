require_relative 'deck'
require_relative 'card'

class HighLow < Deck
  

  def from_wallet
    puts "How much money would you like to add from your wallet?"
    @money = gets.to_i
    puts "You are adding $#{@money}"
    puts "How much would you like to bet per round?"
    @bet = gets.to_i
    puts "You are betting $#{@bet}"
  end

  def shuffle
    generate_deck
    shuffle_cards
    puts "Your first card is: #{@cards.sample.rank}"  
  end
  
  def higher_lower
    puts "Is the next card Higher or Lower? H/L"
    @guess = gets.to_s.upcase
    case @guess
    when "H"
      if @cards.first.rank
    end
  end
end


end

game = HighLow.new 

game.from_wallet
game.shuffle
game.higher_lower

