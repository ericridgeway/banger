defmodule BangerTest do
  use ExUnit.Case
  doctest Banger

  test "greets the world" do
    assert Banger.hello() == :world
  end
end
