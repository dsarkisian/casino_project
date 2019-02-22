class Player

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def make_bet
    bet = rand(1..9)
    puts bet
  end

end
