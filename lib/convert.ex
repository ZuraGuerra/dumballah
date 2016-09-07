defmodule Dumballah.Convert do
  # It's dangerous to go alone, take this:
  # http://erlang.org/doc/man/calendar.html

  @minute_in_seconds :calendar.time_to_seconds({0, 1, 0})
  @hour_in_seconds :calendar.time_to_seconds({1, 0, 0})
  @day_in_seconds @hour_in_seconds * 24

  defdelegate to_unix(date), to: DateTime, as: :to_unix
  defdelegate from_unix(date), to: DateTime, as: :from_unix!

  def to_seconds(number), do: to_seconds(:minutes, number)
  def to_seconds(:minutes, number \\ 1), do: @minute_in_seconds * number
  def to_seconds(:hours, number \\ 1), do: @hour_in_seconds * number
  def to_seconds(:days, number \\ 1), do: @day_in_seconds * number
end
