defmodule Generator.Templates.Template do
  @moduledoc """
  Defines all templates behaviour
  """

  @doc """
  Creates a new template representation
  """
  @callback new(String.t(), list) :: struct

  @doc """
  Get template path
  """
  @callback template_path :: Path.t()
end
