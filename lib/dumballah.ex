defmodule Dumballah do
  @moduledoc """
  Provides basic functions related to Unix time.
  """

  alias Dumballah.Construct

  @doc """
  Returns your current local time in seconds.
  If you need the current UTC time, use `DateTime.utc_now/0`,
  which is part of the Elixir standard library since 1.3.

  ## Examples
      iex> Dumballah.now
      1474321894
  """
  @spec now() :: integer
  def now do
    Construct.elixir_datetime(:erlang.date, :erlang.time)
    |> DateTime.to_unix
  end

  @doc """
  Returns the Unix epoch in Gregorian seconds.

  ## Examples
      iex> Dumballah.unix_epoch
      62167219200
  """
  @spec unix_epoch() :: integer
  def unix_epoch,
    do: :calendar.datetime_to_gregorian_seconds({{1970,1,1},{0,0,0}})
end
