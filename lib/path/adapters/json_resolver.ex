defmodule Generator.Path.Adapters.JsonResolver do
  @moduledoc false
  alias Generator.Path.Adapters.PathResolver

  @behaviour PathResolver

  def resolve(_path), do: {:error, :no_implemented_yet}
end
