defmodule Generator.MixProject do
  use Mix.Project

  def project do
    [
      app: :generator,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      config_path: "./config/config.exs",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps, do: []
end
