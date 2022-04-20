defmodule Generator.Paths do
  @moduledoc """
  Template generator paths context external API
  """
  alias Generator.Template.Schemas.Template

  alias Generator.Path.Adapters.{
    LocalResolver,
    PathCreator
  }

  @doc """
  Resolves all template paths
  """
  @spec resolve_template_paths(Template.t()) :: any
  def resolve_template_paths(%Template{template_path: template_path, new_path: project_path}),
    do: LocalResolver.resolve(template_path, project_path)

  @doc """
  Creates all paths for the given project
  """
  @spec create_from_template(any) :: :ok
  def create_from_template(paths),
    do: PathCreator.create(paths)
end
