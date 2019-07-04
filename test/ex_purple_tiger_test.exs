defmodule ExPurpleTigerTest do
  use ExUnit.Case
  doctest ExPurpleTiger

  test "greets the world" do
    assert ExPurpleTiger.hello() == :world
  end
end
