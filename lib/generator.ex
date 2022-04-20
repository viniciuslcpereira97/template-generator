defmodule Generator do
  @moduledoc false

  alias Generator.{Paths, Templates, Projects}

  @doc """
  Generate a new project based on template
  """
  @spec generate(String.t() | Path.t(), atom | String.t()) :: :ok
  def generate(path, template) when is_atom(template) do
    path
    |> Projects.new(template)
    |> Templates.build()
    |> Paths.resolve_template_paths()
    |> Paths.create_from_template()
  end

  def generate(path, template) when is_bitstring(template),
    do: generate(path, String.to_atom(template))
end
