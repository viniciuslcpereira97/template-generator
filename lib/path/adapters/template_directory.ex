defmodule Generator.Path.Adapters.TemplateDirectory do
  @moduledoc """
  Project template directory resolutions
  """
  alias Generator.Path.Schemas.TemplateDirectory

  @doc """
  Build a new template directory representation
  """
  @spec build(Path.t(), Path.t(), list) :: TemplateDirectory.t()
  def build(copy_from, copy_to, childs) do
    %TemplateDirectory{
      from_path: copy_from,
      to_path: copy_to,
      childs: childs
    }
  end
end
