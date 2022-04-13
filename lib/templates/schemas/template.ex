defmodule Generator.Templates.Schemas.Template do
  @moduledoc """
  Schema representing a Template
  """
  alias __MODULE__

  defstruct new_path: nil,
            template_path: nil

  @type t :: %Template{
          new_path: Path.t(),
          template_path: Path.t()
        }

  @doc """
  Create a new Template
  """
  @spec new(String.t() | Path.t(), :atom) :: Template.t()
  def new(path, template_name) do
    template = template(template_name)

    %Template{
      new_path: Path.expand(path),
      template_path: template_path(template)
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
