class Wallet

  attr_accessor :money

  def initialize (money)
    @money = money
  end

  def add_money
    puts "How much would you like to add?"
    @addmoney = gets.to_i
    if @addmoney > 0
      @addmoney = Array.new
      puts "$#{money} has been added to your account"
    else
      puts "Please add money"
      add_money
    end

end