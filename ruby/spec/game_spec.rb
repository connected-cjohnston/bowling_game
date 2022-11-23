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

  it 'roll 1 spare' do
    game.roll(5)
    game.roll(5)
    game.roll(3)
    17.times { game.roll(0) }
    expect(game.score).to eq(16)
  end

  it 'roll 1 strike' do
    game.roll(10)
    game.roll(3)
    game.roll(4)
    16.times { game.roll(0) }
    expect(game.score).to eq(24)
  end

  it 'should roll a perfect game' do
    12.times { game.roll(10) }
    expect(game.score).to eq(300)
  end
end
