defmodule Generator.Template.Schemas.Template do
  @moduledoc """
  Schema representing a Template
  """
  alias __MODULE__

  defstruct new_path: nil,
            template_path: nil

  @type t :: %Template{
          new_path: Path.t(),
          template_path: Path.t()
        }
end
