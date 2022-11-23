class Game
  def initialize
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
      if strike?(roll_index)
        result = 10 + strike_bonus(roll_index)
        roll_index += 1
      elsif spare?(roll_index)
        result += 10 + spare_bonus(roll_index)
        roll_index += 2
      else
        result += frame_score(roll_index)
        roll_index += 2
      end
    end

    result
  end

  private

  def spare?(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] == 10
  end

  def strike?(roll_index)
    @rolls[roll_index] == 10
  end

  def spare_bonus(roll_index)
    @rolls[roll_index + 2]
  end

  def strike_bonus(roll_index)
    @rolls[roll_index + 1] + @rolls[roll_index + 2]
  end

  def frame_score(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1]
  end
end
