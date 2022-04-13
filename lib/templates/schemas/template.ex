defmodule Generator.Templates.Schemas.Template do
  @moduledoc false
  alias __MODULE__

  defstruct name: nil,
            new_path: nil,
            template: nil,
            template_path: nil

  def new(path, template_name, opts \\ []) do
    template = template(template_name)

    %Template{
      name: opts[:name] || Path.basename(path),
      template: template,
      new_path: Path.expand(path),
      template_path: template_path(template)
    }
  end

  def template(name) do
    :generator
    |> Application.get_env(:templates)
    |> Access.get(name)
  end

  def template_path(template),
    do: Path.join(Application.get_env(:generator, :templates_dir), template)
end
