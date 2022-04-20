defmodule Generator.Project.Adapters.Project do
  @moduledoc """
  Project resolutions
  """

  alias Generator.Project.Schemas.Project

  @doc """
  Create a new project representation
  """
  @spec new(Path.t(), atom) :: Project.t()
  def new(path, template) do
    %Project{
      name: Path.basename(path),
      path: Path.expand(path),
      template: template
    }
  end
end
