defmodule Generator.Path.Adapters.TemplateFile do
  @moduledoc """
  Project template file resolutions
  """
  alias Generator.Path.Schemas.TemplateFile

  @doc """
  Build a new template file representation
  """
  @spec build(Path.t(), Path.t()) :: TemplateFile.t()
  def build(from_path, to_path) do
    %TemplateFile{
      from_path: from_path,
      to_path: to_path
    }
  end
end
