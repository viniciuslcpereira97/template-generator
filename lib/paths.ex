defmodule Generator.Paths do
  @moduledoc false
  alias Generator.Paths.Logic.{Builder, Creator}

  def build_for_template(%_{template_path: template_path, new_path: project_path}) do
    template_path
    |> Builder.build(project_path)
  end

  def create(paths), do: Creator.create(paths)
end
