defmodule Dumballah.Convert do
  @moduledoc """
  Provides functions to perform conversions between
  seconds and other time units (minutes, hours and days).
  """

  @minute_in_seconds :calendar.time_to_seconds({0, 1, 0})
  @hour_in_seconds :calendar.time_to_seconds({1, 0, 0})
  @day_in_seconds @hour_in_seconds * 24

  defdelegate to_unix(date), to: DateTime, as: :to_unix
  defdelegate from_unix(date), to: DateTime, as: :from_unix!

  @doc """
  Convert minutes to seconds.

  ## Examples
      iex> Dumballah.Convert.to_seconds(3)
      180
  """
  @spec to_seconds(minutes :: integer) :: seconds :: integer
  def to_seconds(number), do: to_seconds(:minutes, number)

  @doc """
  Convert `:minutes`, `:hours` and `:days` to seconds.

  ## Examples
      iex> Dumballah.Convert.to_seconds(:hours, 7)
      25200
  """
  @spec to_seconds(unit :: atom, multiplier :: integer) :: seconds :: integer
  def to_seconds(:minutes, multiplier), do: @minute_in_seconds * multiplier
  def to_seconds(:hours, multiplier), do: @hour_in_seconds * multiplier
  def to_seconds(:days, multiplier), do: @day_in_seconds * multiplier

  @doc """
  Convert seconds to `:minutes`, `:hours` and `:days`.

  ## Examples
      iex> Dumballah.Convert.from_seconds(:hours, 25200)
      7.0
  """
  @spec from_seconds(unit :: atom, multiplier :: integer) :: result :: float
  def from_seconds(:minutes, seconds), do: seconds / @minute_in_seconds
  def from_seconds(:hours, seconds), do: seconds / @hour_in_seconds
  def from_seconds(:days, seconds), do: seconds / @day_in_seconds
end
