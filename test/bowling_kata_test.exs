defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  import BowlingKata

  test "A game without strikes or spares should sum only knocked down pins" do
    testing("00000000000000000000", 0)
    testing("55555555555555555555", 100)
  end


  defp testing(test_value, expected_result) do
    assert BowlingKata.calc_score(test_value) == expected_result
  end
  
end
