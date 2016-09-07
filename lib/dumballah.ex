defmodule Dumballah do
  def now do
    {year, month, day} = :erlang.date
    {hours, minutes, seconds} = :erlang.time
    %DateTime{calendar: Calendar.ISO, day: day, hour: hours, microsecond: {0, 0},
              minute: minutes, month: month, second: seconds, std_offset: 0,
              time_zone: "Etc/UTC", utc_offset: 0, year: year, zone_abbr: "UTC"}
    |> DateTime.to_unix
  end

  def unix_epoch,
    do: :calendar.datetime_to_gregorian_seconds({{1970,1,1},{0,0,0}})
end
