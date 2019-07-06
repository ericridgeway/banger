defmodule Banger.Example do
  import Banger

  defwithbang for_test(arg1) do
    case arg1 do
      :bad_input ->
        {:error, :whatever}

      _ ->
        {:ok, :yay}
    end
  end
end
