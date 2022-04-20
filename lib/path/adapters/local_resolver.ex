defmodule Generator.Path.Adapters.LocalResolver do
  @moduledoc false
  alias Generator.Path.Adapters.PathResolver

  alias Generator.Path.Adapters.{
    TemplateDirectory,
    TemplateFile
  }

  @behaviour PathResolver

  def resolve(template_path, project_path) do
    project_directories = resolve_paths(template_path, File.ls!(template_path), [])
    TemplateDirectory.build(project_path, project_path, project_directories)
  end

  defp resolve_paths(path, [head | tail], accumulator) do
    with current_path <- Path.join(path, head) do
      node =
        case File.dir?(current_path) do
          true ->
            childs = resolve_paths(current_path, File.ls!(current_path), [])
            TemplateDirectory.build(current_path, head, childs)

          false ->
            TemplateFile.build(current_path, head)
        end

      resolve_paths(path, tail, accumulator ++ [node])
    end
  end

  defp resolve_paths(_path, [], accumulator), do: accumulator
end
