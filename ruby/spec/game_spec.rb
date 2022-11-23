require './app/game'

RSpec.describe Game do
  let(:game) { Game.new }

  it 'roll a gutter game' do
    20.times { game.roll(0) }
    expect(game.score).to eq(0)
  end

  it 'rolls all 1s' do
    20.times { game.roll(1) }
    expect(game.score).to eq(20)
  end

  xit 'roll 1 spare' do
    game.roll(5)
    game.roll(5)
    game.roll(3)
    17.times { game.roll(0) }
    expect(game.score).to eq(16)
  end
end
