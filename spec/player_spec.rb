require_relative '../lib/player'

describe Player do
  player_1 = Player.new('Bar')
  player_2 = Player.new('Ken')

  describe '#name' do
    it 'returns player\'s name' do
      expect(player_1.name).to eq('Bar')
    end
  end

  describe '#hit_points' do
    it 'returns player\'s hit_points' do
      expect(player_1.hit_points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#attack' do

    it 'shows player2 received an attack' do
      expect(player_2).to receive(:attacked)
      player_1.attack(player_2)
    end

    it 'reduces player2\'s HP by 10 when attacked' do
      player_1.attack(player_2)
      expect(player_2.hit_points).to eq(50)
    end

  end

end
