defmodule Generator.Project.Schemas.Project do
  @moduledoc """
  Schema representing a project
  """
  alias __MODULE__

  defstruct name: nil,
            path: nil,
            template: nil

  @type t :: %Project{
          name: String.t(),
          path: Path.t(),
          template: atom
        }
end
