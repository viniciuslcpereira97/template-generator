defmodule Generator.Paths.Schemas.TemplateFile do
  @moduledoc """
  Schema representing a template file
  """
  alias __MODULE__

  defstruct copy_from: nil,
            copy_to: nil

  @type t :: %TemplateFile{
          copy_from: Path.t(),
          copy_to: Path.t()
        }

  @doc """
  Create new template file
  """
  @spec new(String.t() | Path.t(), String.t() | Path.t()) :: TemplateFile.t()
  def new(copy_from, copy_to) do
    %TemplateFile{
      copy_from: copy_from,
      copy_to: copy_to
    }
  end
end
