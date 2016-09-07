defmodule Dumballah do
  def now do
    {megaseconds, seconds, _} = :os.system_time
    (megaseconds * 1000000) + seconds
  end
end
