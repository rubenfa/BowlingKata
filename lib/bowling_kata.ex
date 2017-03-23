defmodule BowlingKata do
  @moduledoc """
  Documentation for BowlingKata.
  """

 
  def calc_score(frame) do
    frame
    |> String.codepoints
    |> Enum.map(fn(x) -> String.to_integer(x) end)
    |> Enum.sum
  end
end
