defmodule Generator.Path.Adapters.PathCreator do
  @moduledoc """
  Project template path creator
  """
  import Mix.Generator

  alias Generator.Path.Schemas.{
    TemplateDirectory,
    TemplateFile
  }

  @doc """
  Creates all paths recursively for the given files and directories tree
  """
  @spec create(TemplateDirectory.t()) :: :ok
  def create(%TemplateDirectory{childs: childs, to_path: to_path} = directory) do
    create_path(directory)
    create_childs(childs, to_path)
  end

  defp create_childs([head | tail], parent) do
    create_path(head, parent)
    create_childs(tail, parent)
  end

  defp create_childs([], _parent),
    do: :ok

  defp create_path(%TemplateDirectory{to_path: to_path}),
    do: create_directory(to_path)

  defp create_path(%TemplateDirectory{to_path: to_path, childs: childs}, parent) do
    parent
    |> Path.join(to_path)
    |> create_directory()

    create_childs(childs, Path.join(parent, to_path))
  end

  defp create_path(%TemplateFile{to_path: to_path, from_path: from_path}, parent) do
    with content <- File.read!(from_path) do
      parent
      |> Path.join(to_path)
      |> create_file(content)
    end
  end
end
