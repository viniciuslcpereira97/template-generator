defmodule Generator do
  @moduledoc false

  alias Generator.{Paths, Templates}

  @doc """
  Generate a new project based on template
  """
  @spec generate(String.t() | Path.t(), atom | String.t()) :: :ok
  def generate(path, template) when is_atom(template) do
    path
    |> Templates.build(template)
    |> Paths.build_for_template()
    |> Paths.create()
  end

  def generate(path, template) when is_bitstring(template),
    do: generate(path, String.to_atom(template))
end
