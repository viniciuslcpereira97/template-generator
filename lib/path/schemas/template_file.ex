defmodule Generator.Path.Schemas.TemplateFile do
  @moduledoc """
  Schema representing a template file
  """
  alias __MODULE__

  defstruct from_path: nil,
            to_path: nil

  @type t :: %TemplateFile{
          from_path: Path.t(),
          to_path: Path.t()
        }
end
