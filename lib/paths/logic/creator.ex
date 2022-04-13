defmodule Generator.Paths.Logic.Creator do
  @moduledoc false
  import Mix.Generator

  alias Generator.Paths.Schemas.{
    TemplateDirectory,
    TemplateFile
  }

  def create([head | tail]) do
    case head do
      %TemplateDirectory{} = directory ->
        create_directory(directory.copy_to)
        create(directory.childs)

      %TemplateFile{} = file ->
        content = File.read!(file.copy_from)
        create_file(file.copy_to, content)
    end

    create(tail)
  end

  def create([]), do: :ok
end
