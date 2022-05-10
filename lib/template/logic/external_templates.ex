defmodule Generator.Template.Logic.ExternalTemplates do
  @moduledoc """
  External templates
  """

  def filter_external_resources(templates) do
    Enum.filter(templates, &external?/1)
  end

  defp external?({_alias, {:git, _external_resource}, _local_path}), do: true
  defp external?(_), do: false
end
