defmodule Mix.Tasks.GeneratorNew do
  @moduledoc "Generate new module using template"
  @shortdoc "Generate new module using template"
  use Mix.Task

  alias Generator.Context

  @switches [template: :atom]

  def run(argv) do
    Mix.Task.run("app.start")

    IO.inspect()
  end
end
