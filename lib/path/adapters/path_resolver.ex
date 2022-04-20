defmodule Generator.Path.Adapters.PathResolver do
  @moduledoc """
  Path Resolver behaviour.
  Defines all common behaviours in path resolvers.
  """

  @doc """
  Resolves paths to create.
  """
  @callback resolve(Path.t(), any) :: any
end
