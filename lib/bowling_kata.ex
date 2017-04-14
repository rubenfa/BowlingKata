defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

  def calc_score(frame) do
    frame
    |> String.codepoints
    |> get_score
  end

  defp get_score([ _ | [ try_2 = "/" | [next_1 | tail]]]) do
    10 + get_score_of(next_1) + get_score([next_1] ++ tail)
  end

  defp get_score([ try_1 = "#" | [ next_1 | [next_2 | tail]]]) do
    10 + get_score_of(next_1) + get_score_of(next_2) + get_score([next_1, next_2] ++ tail)
  end

  defp get_score(last_try) when length(last_try) == 1 do
    0
  end

  defp get_score([try_1 | [try_2 | tail]]) do
    get_score_of(try_1) + get_score_of(try_2) + get_score(tail)
  end  

  defp get_score([]) do
     0
  end

  #  A miss
  defp get_score_of("-") do
    0
  end

  # A spare
  defp get_score_of("/") do
    10
  end

  # A strike
  defp get_score_of("#") do
    10
  end

  # Any number of pins
  defp get_score_of(x) do
    String.to_integer(x)
  end
end
