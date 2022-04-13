defmodule Generator.Paths.Schemas.TemplateFile do
  @moduledoc false
  alias __MODULE__

  defstruct copy_from: nil,
            copy_to: nil

  def new(copy_from, copy_to) do
    %TemplateFile{
      copy_from: copy_from,
      copy_to: copy_to
    }
  end
end
