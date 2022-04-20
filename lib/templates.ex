defmodule Generator.Templates do
  @moduledoc """
  Template Generator Templates context external API
  """
  alias Generator.Template.Adapters.Template

  @doc """
  Build template info for an project
  """
  @spec build(struct) :: Template.t()
  def build(%{template: template_name, path: project_path} = _project),
    do: Template.build(template_name, project_path)
end
