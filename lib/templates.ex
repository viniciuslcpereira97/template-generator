defmodule Generator.Templates do
  @moduledoc """
  Templates factory
  """
  alias Generator.Templates.{Example}

  def build(template, path, opts \\ []) do
    case template do
      :example -> Example.new(path, opts)
    end
  end
end
