defmodule Dumballah do
  def now do
    {megaseconds, seconds, _} = :os.system_time
    (megaseconds * 1000000) + seconds
  end

  def unix_epoch,
    do: :calendar.datetime_to_gregorian_seconds({{1970,1,1},{0,0,0}})
end
