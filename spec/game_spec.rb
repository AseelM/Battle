require_relative '../lib/game'

describe Game do

  describe '#player_1' do
    it 'returns player1' do
      player_1 = double(:player)
      player_2 = double(:player)
      game = Game.new(player_1, player_2)
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player2' do
      player_1 = double(:player)
      player_2 = double(:player)
      game = Game.new(player_1, player_2)
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'shows player2 received an attack' do
      player_1 = double(:player)
      player_2 = double(:player)
      game = Game.new(player_1, player_2)
      expect(player_2).to receive(:attacked)
      game.attack(player_2)
    end
  end

end
