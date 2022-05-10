defmodule Generator.Templates do
  @moduledoc """
  Template generator templates context external API
  """
  alias Generator.Template.Adapters.{
    Template,
    Loader
  }

  alias Generator.Project.Schemas.Project, as: ProjectSchema
  alias Generator.Template.Schemas.Template, as: TemplateSchema

  @doc """
  Build template info for an project
  """
  @spec build(ProjectSchema.t()) :: TemplateSchema.t()
  def build(%{template: template_name, path: project_path} = _project),
    do: Template.build(template_name, project_path)

  @doc """
  Load external resources templates
  """
  @spec load_external(list) :: :ok
  def load_external(templates), do: Loader.load(templates)
end
