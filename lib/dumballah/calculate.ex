defmodule Dumballah.Calculate do
  @moduledoc """
  Provides functions to perform time calculations.
  """

  alias Dumballah.{Convert, Construct}

  @doc """
  Add `:days`, `:hours` and `:minutes` to a given timestamp.

  ## Examples
      iex> Dumballah.Calculate.add_time(1474320734, :days, 1)
      1474407134
  """
  @spec add_time(timestamp :: integer, unit :: atom, multiplier :: integer) :: timestamp :: integer
  def add_time(current, unit, multiplier),
    do: current + Convert.to_seconds(unit, multiplier)

  @doc """
  Subtract `:days`, `:hours` and `:minutes` from a given timestamp.

  ## Examples
      iex> Dumballah.Calculate.subtract_time(1474320734, :days, 1)
      1474234334
  """
  @spec subtract_time(timestamp :: integer, unit :: atom, multiplier :: integer) :: timestamp :: integer
  def subtract_time(current, unit, multiplier),
    do: current - Convert.to_seconds(unit, multiplier)

  @doc """
  Calculates if a timestamp is in the past.

  ## Examples
      iex> Dumballah.Calculate.has_passed?(1474320734)
      true
  """
  @spec has_passed?(timestamp :: integer) :: has_passed? :: boolean
  def has_passed?(timestamp), do: Dumballah.now >= timestamp

  @doc """
  Calculates an Erlang date in Unix time from dawn.

  ## Examples
      iex> Dumballah.Calculate.date_from_dawn({1995, 7, 3})
      804729600
  """
  @spec date_from_dawn({year :: integer, month :: integer, day :: integer}) :: timestamp :: integer
  def date_from_dawn({year, month, day}) do
    Construct.elixir_datetime(year, month, day)
    |> DateTime.to_unix
  end

  @doc """
  Calculates the remaining seconds until midnight
  from an Erlang time.

  ## Examples
      iex> Dumballah.Calculate.seconds_until_midnight({3, 45, 0})
      72900
  """
  @spec seconds_until_midnight({hours :: integer, minutes :: integer, seconds :: integer}) :: timestamp :: integer
  def seconds_until_midnight({hours, minutes, seconds}) do
    time = seconds |> add_time(:minutes, minutes) |> add_time(:hours, hours)
    Convert.to_seconds(:days, 1) - time
  end
end
