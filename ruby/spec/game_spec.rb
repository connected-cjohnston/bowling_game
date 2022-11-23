require './app/game'

RSpec.describe Game do
  it 'roll a gutter game' do
    game = Game.new
    20.times { game.roll(0) }
    expect(game.score).to eq(0)
  end
end
