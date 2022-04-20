defmodule Generator.Project.Adapters.Project do
  @moduledoc false

  alias Generator.Project.Schemas.Project, as: ProjectSchema

  def new(path, template) do
    %ProjectSchema{
      name: Path.basename(path),
      path: Path.expand(path),
      template: template
    }
  end
end
