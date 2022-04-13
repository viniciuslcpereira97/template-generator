defmodule Generator.Paths do
  @moduledoc false
  import Mix.Generator

  def build(%_{new_path: new_path, template_path: template_path} = _template) do
    with childs <- File.ls!(template_path) do
      build_paths(template_path, new_path, childs, [])
    end
  end

  def create([head | tail]) do
    {type, from, to, childs} = head

    case type do
      :dir ->
        create_directory(to)
        create(childs)

      :file ->
        create_file(to, File.read!(from))
    end

    create(tail)
  end

  def create([]), do: :ok

  defp build_paths(template_path, new_path, [head | tail], accumulator) do
    current_path = Path.join(template_path, head)

    node =
      case File.dir?(current_path) do
        true ->
          childs =
            build_paths(current_path, Path.join(new_path, head), File.ls!(current_path), [])

          build_node(:dir, current_path, Path.join(new_path, head), childs)

        false ->
          build_node(:file, current_path, Path.join(new_path, head), nil)
      end

    build_paths(template_path, new_path, tail, accumulator ++ [node])
  end

  defp build_paths(_template_path, _new_path, [], accumulator), do: accumulator

  defp build_node(type, from, to, childs), do: {type, from, to, childs}
end
