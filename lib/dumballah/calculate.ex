defmodule Dumballah.Calculate do
  alias Dumballah.Convert

  def add_time(current, unit, multiplier),
    do: current + Convert.to_seconds(unit, multiplier)

  def substract_time(current, unit, multiplier),
    do: current - Convert.to_seconds(unit, multiplier)

  def has_passed?(timestamp), do: Dumballah.now >= timestamp
end
