defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  import BowlingKata

  test "A game without strikes or spares should sum only knocked down pins" do
    testing("00000000000000000000", 0)
    testing("55555555555555555555", 100)
    testing("9-9-9-9-9-9-9-9-9-9-", 90)
  end

  test "If in two tries the player knock down all pins this is a spare and his score is 10" do
    testing("1/000000000000000000", 10)
  end

  test "Incremental frames with one more spare each time" do
    testing("1/100000000000000000", 12)
    testing("1/1/1000000000000000", 23)
    testing("1/1/1/10000000000000", 34)
    testing("1/1/1/1/100000000000", 45)
    testing("1/1/1/1/1/1000000000", 56)
    testing("1/1/1/1/1/1/10000000", 67)
    testing("1/1/1/1/1/1/1/100000", 78)
    testing("1/1/1/1/1/1/1/1/1000", 89)
    testing("1/1/1/1/1/1/1/1/1/10", 100)
    testing("1/1/1/1/1/1/1/1/1/1/0", 109)
    testing("1/1/1/1/1/1/1/1/1/1/1", 110)
  end


  defp testing(test_value, expected_result) do
    assert BowlingKata.calc_score(test_value) == expected_result
  end
  
end

 
