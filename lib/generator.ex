defmodule Generator do
  @moduledoc """
  Generator task entrypoint

  This module centralize all steps required to create a new project based on the given template
  """

  alias Generator.{
    Paths,
    Templates,
    Projects
  }

  @doc """
  Generates a new project based on template
  """
  @spec generate(Path.t(), atom | String.t()) :: :ok
  def generate(path, template) when is_atom(template) do
    path
    |> Projects.new(template)
    |> Templates.build()
    |> Paths.resolve_template_paths()
    |> Paths.create_from_template()
  end

  def generate(path, template) when is_bitstring(template),
    do: generate(path, String.to_atom(template))

  @doc """
  """
  @spec load_templates :: :ok
  def load_templates() do
    :generator
    |> Application.get_env(:templates)
    |> Templates.load_external()
  end
end
