require 'game'

describe Game do
  subject(:game) {described_class.new(player1,computer)}
  let(:computer) {double :computer}
  let(:player1) {double(:player1, name: 'Scott')}
  let(:player2) {double :player2}

  describe '#initialize' do
    it 'assigns a player' do
      expect(game.player1).to eq player1
    end
  end

  describe 'Winner' do
    it 'can choose correct winner' do
      expect(game.winner(:rock, :scissors)).to eq 'Scott'
    end

    it 'can choose correct winner' do
      expect(game.winner(:rock, :lizard)).to eq 'Scott'
    end

    it 'can choose correct winner' do
      expect(game.winner(:scissors, :paper)).to eq 'Scott'
    end

    it 'can choose correct winner' do
      expect(game.winner(:scissors, :lizard)).to eq 'Scott'
    end

    it 'can choose correct winner' do
      expect(game.winner(:paper, :rock)).to eq 'Scott'
    end

    it 'can choose correct winner' do
      expect(game.winner(:paper, :spock)).to eq 'Scott'
    end

    it 'can choose correct winner with spock, lizard added' do
      expect(game.winner(:lizard, :spock)).to eq 'Scott'
    end

    it 'can choose correct winner with spock, lizard added' do
      expect(game.winner(:lizard, :paper)).to eq 'Scott'
    end

    it 'can choose correct winner with spock, lizard added' do
      expect(game.winner(:spock, :scissors)).to eq 'Scott'
    end

    it 'can choose correct winner with spock, lizard added' do
      expect(game.winner(:spock, :scissors)).to eq 'Scott'
    end

  it 'returns no winner if the game is a draw' do
    expect(game.winner(:paper, :paper)).to eq :NO_WINNER
  end

  end
end
