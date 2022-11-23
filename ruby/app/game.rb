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
    10.times do
      if @rolls[roll_index] + @rolls[roll_index + 1] == 10
        result += 10 + @rolls[roll_index + 2]
      else
        result += @rolls[roll_index] + @rolls[roll_index + 1]
      end
      roll_index += 2
    end

    result
  end
end
