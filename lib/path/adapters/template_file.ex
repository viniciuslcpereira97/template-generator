defmodule Generator.Path.Adapters.TemplateFile do
  @moduledoc false
  alias Generator.Path.Schemas.TemplateFile

  @doc """
  Create new template file
  """
  @spec build(String.t() | Path.t(), String.t() | Path.t()) :: TemplateFile.t()
  def build(from_path, to_path) do
    %TemplateFile{
      from_path: from_path,
      to_path: to_path
    }
  end
end
