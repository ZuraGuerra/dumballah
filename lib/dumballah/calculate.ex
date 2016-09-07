defmodule Dumballah.Calculate do
  alias Dumballah.Convert

  def add_time(current, unit, multiplier),
    do: current + Convert.to_seconds(unit, multiplier)

  def substract_time(current, unit, multiplier),
    do: current - Convert.to_seconds(unit, multiplier)

  def has_passed?(timestamp), do: Dumballah.now >= timestamp

  def date_from_dawn({year, month, day}) do
    %DateTime{calendar: Calendar.ISO, day: day, hour: 0, microsecond: {0, 0},
              minute: 0, month: month, second: 0, std_offset: 0,
              time_zone: "Etc/UTC", utc_offset: 0, year: year, zone_abbr: "UTC"}
    |> DateTime.to_unix
  end

  def seconds_until_midnight({hours, minutes, seconds}) do
    time = seconds |> add_time(:minutes, minutes) |> add_time(:hours, hours)
    Convert.to_seconds(:days, 1) - time
  end
end
