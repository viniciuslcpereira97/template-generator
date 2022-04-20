defmodule Generator.Path.Adapters.TemplateDirectory do
  @moduledoc false
  alias Generator.Path.Schemas.TemplateDirectory

  @doc """
  Build an new template directory
  """
  @spec build(String.t() | Path.t(), String.t() | Path.t(), list) :: TemplateDirectory.t()
  def build(copy_from, copy_to, childs) do
    %TemplateDirectory{
      from_path: copy_from,
      to_path: copy_to,
      childs: childs
    }
  end
end
