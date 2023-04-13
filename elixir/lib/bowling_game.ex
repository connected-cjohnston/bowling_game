defmodule Game do
  @moduledoc """
  Implements the bowling game kata
  """

  def score([frame | []]) do
    Enum.reduce(frame, 0, fn(x, acc) -> x + acc end)
  end

  def score([[10, _] | rest]) do
    10 + next_two_rolls_score(rest) + score(rest)
  end

  def score([[roll1, roll2] | rest]) when roll1 + roll2 == 10 do
    10 + next_roll(rest) + score(rest)
  end

  def score([frame | rest]) do
    score([frame]) + score(rest)
  end

  def next_roll([[roll | _ ] | _]) do
    roll
  end

  def next_two_rolls_score([[roll1, roll2, _]]) do
    roll1 + roll2
  end

  def next_two_rolls_score([[10 | _] | rest]) do
    10 + next_roll(rest)
  end

  def next_two_rolls_score([frame | _]) do
    score([frame])
  end
end
