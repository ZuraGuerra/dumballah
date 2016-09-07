defmodule Dumballah do
  def now do
    {year, month, day} = :erlang.date
    {hours, minutes, seconds} = :erlang.time
    Construct.elixir_datetime(year, month, day, hours, minutes, seconds)
    |> DateTime.to_unix
  end

  def unix_epoch,
    do: :calendar.datetime_to_gregorian_seconds({{1970,1,1},{0,0,0}})
end
