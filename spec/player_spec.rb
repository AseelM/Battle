require_relative '../lib/player'

describe Player do
  player = Player.new('Bar')

  describe '#name' do
    it 'returns player\'s name' do
      expect(player.name).to eq('Bar')
    end
  end

  describe '#hit_points' do
    it 'returns players\'s hit_points' do
      expect(player.hit_points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#attacked' do
    it 'reduces player\'s HP by 10 when attacked' do
      player.attacked
      expect(player.hit_points).to eq(50)
    end
  end

end
