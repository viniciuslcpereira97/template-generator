defmodule Generator.Templates.Example do
  @moduledoc """
  Example template representation
  """
  alias __MODULE__

  @behaviour Generator.Templates.Template

  @template_name ~w(example)
  @templates_dir Generator.MixProject.project()[:templates_dir]

  defstruct name: nil,
            new_path: nil,
            template_path: nil

  def new(path, opts \\ []) do
    %Example{
      name: opts[:name] || Path.basename(path),
      new_path: Path.expand(path),
      template_path: template_path()
    }
  end

  def template_path, do: Path.join(@templates_dir, @template_name)
end
