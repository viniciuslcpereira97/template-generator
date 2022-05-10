defmodule Generator.Template.Adapters.Loader do
  @moduledoc """
  """
  alias Generator.Template.Logic.ExternalTemplates

  def load(templates) do
    templates
    |> ExternalTemplates.filter_external_resources()
    |> Enum.each(&load_external_template/1)
  end

  def load_external_template({_alias, {:git, remote_path}, local_path}) do
    System.cmd("git", ["clone", remote_path, "./templates/#{local_path}"])
  end

  def load(_), do: :ok
end
