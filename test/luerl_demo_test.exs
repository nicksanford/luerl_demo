defmodule LuerlDemoTest do
  use ExUnit.Case
  doctest LuerlDemo

  test "greets the world" do
    assert LuerlDemo.hello() == :world
  end
end
