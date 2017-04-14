defmodule BowlingKataTest do
  use ExUnit.Case
  doctest BowlingKata

  import BowlingKata

  test "A game without strikes or spares should sum only knocked down pins" do
    testing("00000000000000000000", 0)
    testing("55555555555555555555", 100)
    testing("9-9-9-9-9-9-9-9-9-9-", 90)
  end

  test "If in two tries the player knock down all pins this is a spare and his score is ten" do
    testing("1/000000000000000000", 10)
    testing("2/000000000000000000", 10)
    testing("2/100000000000000000", 11)

   end


  defp testing(test_value, expected_result) do
    assert BowlingKata.calc_score(test_value) == expected_result
  end
  
end

 
