require_relative '../lib/player'

describe Player do
  player = Player.new('Bar')

  describe '#name' do
    it 'returns player\'s name' do
      expect(player.name).to eq('Bar')
    end
  end

end
