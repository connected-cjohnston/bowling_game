class Game
  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    # @rolls.sum

    result = 0
    roll_index = 0
    20.times do
      result += @rolls[roll_index]
      roll_index += 1
    end

    result
  end
end
