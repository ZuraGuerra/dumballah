defmodule Dumballah.Construct do
  @moduledoc false

  @doc false
  def elixir_datetime({year, month, day}, {hour, minute, second}),
    do: elixir_datetime(year, month, day, hour, minute, second)

  @doc false
  def elixir_datetime(year, month, day,
                      hour \\ 0, minute \\ 0, second \\ 0,
                      microsecond \\ {0,0}) do
    %DateTime{calendar: Calendar.ISO,
              year: year,
              month: month,
              day: day,
              hour: hour,
              minute: minute,
              second: second,
              microsecond: microsecond,
              std_offset: 0,
              time_zone: "Etc/UTC",
              utc_offset: 0,
              zone_abbr: "UTC"}
  end
end
