defmodule Generator.Path.Schemas.TemplateDirectory do
  @moduledoc """
  Schema representing a template directory
  """
  alias __MODULE__

  defstruct from_path: nil,
            to_path: nil,
            childs: nil

  @type t :: %TemplateDirectory{
          from_path: Path.t(),
          to_path: Path.t(),
          childs: list
        }
end
