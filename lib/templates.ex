defmodule Generator.Templates do
  @moduledoc """
  Template Generator Templates context external API
  """
  alias Generator.Templates.Schemas.Template

  @doc """
  Create a new Template
  """
  @spec build(String.t() | Path.t(), :atom) :: Template.t()
  def build(path, template_name), do: Template.new(path, template_name)
end
