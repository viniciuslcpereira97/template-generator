defmodule Generator.Template.Adapters.Template do
  @moduledoc false
  alias Generator.Template.Schemas.Template

  @doc """
  Build template struct with given template name and project path.
  """
  @spec build(String.t() | atom, String.t()) :: Template.t()
  def build(template_name, project_path) do
    template_path =
      template_name
      |> template()
      |> template_path()

    %Template{
      new_path: Path.expand(project_path),
      template_path: template_path
    }
  end

  defp template(name) do
    :generator
    |> Application.get_env(:templates)
    |> Access.get(name)
  end

  defp template_path(template),
    do: Path.join(Application.get_env(:generator, :templates_dir), template)
end
