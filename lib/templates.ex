defmodule Generator.Templates do
  @moduledoc false
  alias Generator.Templates.Schemas.Template

  def build(path, template_name, opts \\ []),
    do: Template.new(path, template_name, opts)
end
