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
      game.attack
    end
  end

  describe '#switch' do
    it 'switches to player1 after player2 finishes turn' do
      player_1 = double(:player)
      player_2 = double(:player)
      game = Game.new(player_1, player_2)
      game.switch
      expect(game.current).to eq(player_1)
    end

    it 'switches to player2 after player1 finishes turn' do
      player_1 = double(:player)
      player_2 = double(:player)
      game = Game.new(player_1, player_2)
      2.times{ game.switch }
      expect(game.current).to eq(player_2)
    end

    describe '#turn' do
      it 'switches turn to player2' do
        player_1 = double(:player)
        player_2 = double(:player)
        game = Game.new(player_1, player_2)
        game.turn
        expect(game.current).to eq(player_2)
      end

      it 'switches turn to player2' do
        player_1 = double(:player)
        player_2 = double(:player)
        game = Game.new(player_1, player_2)
        game.switch
        game.turn
        expect(game.current).to eq(player_1)
      end
    end
  end

end
