defmodule DumballahTest do
  use ExUnit.Case, async: true

  test "unix epoch" do
    assert Dumballah.unix_epoch == 62167219200
  end
end
