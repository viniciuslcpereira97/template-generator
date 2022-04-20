defmodule Generator.Projects do
  @moduledoc false
  alias Generator.Project.Adapters.Project

  def new(path, template),
    do: Project.new(path, template)
end
