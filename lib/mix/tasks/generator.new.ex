defmodule Mix.Tasks.Generator.New do
  @moduledoc "Generate new module using template"
  @shortdoc "Generate new module using template"
  use Mix.Task

  @switches [template: :string]

  def run(argv) do
    Mix.Task.run("app.start")
    {args, [path], _errors} = OptionParser.parse(argv, switches: @switches)

    Generator.generate(path, args[:template])
  end
end
