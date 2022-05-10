defmodule Mix.Tasks.Generator.LoadTemplates do
  @moduledoc "Load remote templates to local path"
  @shortdoc "Load remote templates to local path"
  use Mix.Task

  @switches [template: :string]

  def run(argv) do
    Mix.Task.run("app.start")
    {args, [path], _errors} = OptionParser.parse(argv, switches: @switches)

    Generator.generate(path, args[:template])
  end
end
