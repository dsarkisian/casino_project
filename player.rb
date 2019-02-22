require_relative 'player_menu'

class Player

  attr_accessor :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
    player_menu = PlayerMenu.new(@name)
    player_menu.choose_from_menu(balance)
  end

end
