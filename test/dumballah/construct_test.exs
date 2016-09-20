defmodule Dumballah.ConstructTest do
  use ExUnit.Case, async: true

  test "Elixir %DateTime{} construction" do
    assert Dumballah.Construct.elixir_datetime({1995, 7, 3}, {3, 45, 0}) ==
      %DateTime{calendar: Calendar.ISO,
                year: 1995,
                month: 7,
                day: 3,
                hour: 3,
                minute: 45,
                second: 0,
                microsecond: {0, 0},
                std_offset: 0,
                time_zone: "Etc/UTC",
                utc_offset: 0,
                zone_abbr: "UTC"}
  end
end
