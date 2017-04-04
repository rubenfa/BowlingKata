defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

 
  def calc_score(frame) do
    frame
    |> String.codepoints
    |> Enum.map(fn(x) -> get_score(x) end)
    |> Enum.sum
  end

  #  A miss
  defp get_score("-") do
    0
  end

  # A spare
  defp get_score("/") do
    0
  end

  

  # Any number of pins
  defp get_score(x) do
    String.to_integer(x)
  end


end
