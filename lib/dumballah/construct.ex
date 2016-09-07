defmodule Dumballah.Construct do
  def elixir_datetime(year, month, day,
                      hour \\ 0, minute \\ 0, second \\ 0,
                      microsecond \\ {0,0}) do
    %DateTime{calendar: Calendar.ISO, day: day, hour: hour, microsecond: microsecond,
              minute: minute, month: month, second: second, std_offset: 0,
              time_zone: "Etc/UTC", utc_offset: 0, year: year, zone_abbr: "UTC"}
  end
end
