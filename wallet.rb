class Wallet

  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def display
    puts 
    puts "Your current balance is $#{@balance.to_f.round(2)}"
    puts
  end
end