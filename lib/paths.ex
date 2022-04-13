defmodule Generator.Paths do
  @moduledoc """
  Template Generator Paths context external API
  """
  alias Generator.Templates.Schemas.Template

  alias Generator.Paths.Logic.{
    Builder,
    Creator
  }

  @doc """
  Build all paths for template
  """
  @spec build_for_template(Template.t()) :: list
  def build_for_template(%Template{template_path: template_path, new_path: project_path}),
    do: Builder.build(template_path, project_path)

  @doc """
  Create all paths for template
  """
  @spec create(list) :: :ok
  def create(paths),
    do: Creator.create(paths)
end
