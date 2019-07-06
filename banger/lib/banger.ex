defmodule Banger do

  defmacro defwithbang(name_and_args, do: code) do
    {name, args} =
      case name_and_args do
        {name} -> {name, []}
        {name, _} -> {name, []}
        {name, _, args} -> {name, args}
      end

    quote do
      def unquote(:"#{name}!")(unquote_splicing(args)) do
        case unquote(name_and_args) do
          {:ok, return} ->
            return

          _ ->
            raise("#{__MODULE__}.#{unquote(name)}! (bang version) requires :ok response")
        end
      end

      def unquote(name_and_args) do
        unquote(code)
      end
    end
  end
end
