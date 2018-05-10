class Game

  attr_reader :player_1, :player_2, :current

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current = player_2
  end

  def attack
    @current.attacked
  end

  def switch
    @current == @player_1 ?  @current = @player_2 : @current = @player_1
  end

  def turn
    @current == @player_1 ? @player_2 : @player_1
  end

end
