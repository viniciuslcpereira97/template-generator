defmodule Generator.Paths.Logic.Builder do
  @moduledoc false

  alias Generator.Paths.Schemas.{
    TemplateDirectory,
    TemplateFile
  }

  def build(template_path, new_path) do
    with childs <- File.ls!(template_path) do
      build_paths(template_path, new_path, childs, [])
    end
  end

  defp build_paths(template_path, new_path, [head | tail], accumulator) do
    current_path = Path.join(template_path, head)

    node =
      case File.dir?(current_path) do
        true ->
          TemplateDirectory.new(
            current_path,
            Path.join(new_path, head),
            build_paths(current_path, Path.join(new_path, head), File.ls!(current_path), [])
          )

        false ->
          TemplateFile.new(current_path, Path.join(new_path, head))
      end

    build_paths(template_path, new_path, tail, accumulator ++ [node])
  end

  defp build_paths(_template_path, _new_path, [], accumulator), do: accumulator
end
