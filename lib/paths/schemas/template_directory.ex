defmodule Generator.Paths.Schemas.TemplateDirectory do
  @moduledoc false
  alias __MODULE__

  defstruct copy_from: nil,
            copy_to: nil,
            childs: nil

  def new(copy_from, copy_to, childs) do
    %TemplateDirectory{
      copy_from: copy_from,
      copy_to: copy_to,
      childs: childs
    }
  end
end
