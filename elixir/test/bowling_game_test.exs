defmodule BowlingGameTest do
  @moduledoc """
  Tests for bowling game kata
  """
  use ExUnit.Case

  test "gutter rolls" do
    assert 0 == Game.score([[0, 0]])
  end

  test "1 open frame" do
    assert 5 == Game.score([[2, 3]])
  end

  test "last frame" do
    assert 15 == Game.score([[10, 1, 4]])
  end

  test "two open frames" do
    assert 10 == Game.score([[0, 5], [5, 0]])
  end

  test "spare" do
    assert 21 == Game.score([[5, 5], [5, 1]])
  end

  test "strike" do
    assert 20 == Game.score([[10, 0], [2, 3]])
  end

  test "Two strikes" do
    assert 42 == Game.score([[10, 0], [10, 0], [2, 3]])
  end

  test "spare and strike" do
    assert 40 == Game.score([[4, 6], [10, 0], [1, 4]])
  end

  test "perfect game" do
    assert 300 == Game.score([[10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 10, 10]])
  end
end
