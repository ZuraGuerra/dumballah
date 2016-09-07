defmodule Dumballah.Calculate do
  alias Dumballah.{Convert, Construct}

  def add_time(current, unit, multiplier),
    do: current + Convert.to_seconds(unit, multiplier)

  def substract_time(current, unit, multiplier),
    do: current - Convert.to_seconds(unit, multiplier)

  def has_passed?(timestamp), do: Dumballah.now >= timestamp

  def date_from_dawn({year, month, day}) do
    Construct.elixir_datetime(year, month, day)
    |> DateTime.to_unix
  end

  def seconds_until_midnight({hours, minutes, seconds}) do
    time = seconds |> add_time(:minutes, minutes) |> add_time(:hours, hours)
    Convert.to_seconds(:days, 1) - time
  end
end
