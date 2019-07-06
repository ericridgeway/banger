defmodule BangerTest do
  use ExUnit.Case

  alias Banger.{Example}

  test "Basic version" do
    assert {:ok, :yay} = Example.for_test(:whatever)
  end

  test "Bang version" do
    assert :yay = Example.for_test!(:whatever)
  end

  test "Raise if don't get ok back" do
    assert_raise(RuntimeError, fn ->
      Example.for_test!(:bad_input)
    end)
  end
end
