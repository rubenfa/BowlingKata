defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

 
  def calc_score(frame) do
    frame
    |> String.codepoints
    |> get_score
  end

  defp get_score([head | [next = "/" | tail]]) do
    get_score(tail) + get_score_of(next) 
  end

  defp get_score([head | [next | tail]]) do
    get_score(tail) + get_score_of(head) + get_score_of(next)
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

  # Any number of pins
  defp get_score_of(x) do
    String.to_integer(x)
  end
end
