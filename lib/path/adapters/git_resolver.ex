defmodule Generator.Path.Adapters.GitResolver do
  @moduledoc """
  Resolves paths for git template option
  """

  def resolve(_path), do: {:error, :no_implemented_yet}
end
