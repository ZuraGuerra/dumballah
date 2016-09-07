defmodule Dumballah do
  def now do
    Construct.elixir_datetime(:erlang.date, :erlang.time)
    |> DateTime.to_unix
  end

  def unix_epoch,
    do: :calendar.datetime_to_gregorian_seconds({{1970,1,1},{0,0,0}})
end
