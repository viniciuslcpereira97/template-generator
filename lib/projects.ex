defmodule Generator.Projects do
  @moduledoc """
  Template generator projects context external API
  """
  alias Generator.Project.Adapters.Project
  alias Generator.Project.Schemas.Project, as: ProjectSchema

  @doc """
  Creates a new project representation
  """
  @spec new(Path.t(), atom) :: ProjectSchema.t()
  def new(path, template),
    do: Project.new(path, template)
end
