defmodule Generator.Paths do
  @moduledoc """
  Template Generator Paths context external API
  """
  alias Generator.Template.Schemas.Template

  alias Generator.Path.Adapters.{
    LocalResolver,
    PathCreator
  }

  def resolve_template_paths(%Template{template_path: template_path, new_path: project_path}),
    do: LocalResolver.resolve(template_path, project_path)

  def create_from_template(paths),
    do: PathCreator.create(paths)
end
