defmodule Generator.Paths.Schemas.TemplateDirectory do
  @moduledoc """
  Schema representing a template directory
  """
  alias __MODULE__

  defstruct copy_from: nil,
            copy_to: nil,
            childs: nil

  @type t :: %TemplateDirectory{
          copy_from: Path.t(),
          copy_to: Path.t(),
          childs: list
        }

  @doc """
  Create new template directory
  """
  @spec new(String.t() | Path.t(), String.t() | Path.t(), list) :: TemplateDirectory.t()
  def new(copy_from, copy_to, childs) do
    %TemplateDirectory{
      copy_from: copy_from,
      copy_to: copy_to,
      childs: childs
    }
  end
end
