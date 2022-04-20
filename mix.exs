defmodule Generator.MixProject do
  use Mix.Project

  def project do
    [
      app: :generator,
      package: package(),
      description: description(),
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      config_path: "./config/config.exs",
      source_url: "https://github.com/viniciuslcpereira97/template-generator",
      docs: docs(),
      deps: deps()
    ]
  end

  def description do
    """
    Elixir template generator
    """
  end

  def package do
    [
      name: "template_generator",
      files: ~w(lib doc mix.exs README* .formatter.exs),
      links: %{"github" => "https://github.com/viniciuslcpereira97/template-generator"},
      licenses: ["Apache-2.0"]
    ]
  end

  def docs do
    [
      main: "Template Generator",
      extras: ["README.md", "README_pt_BR.md"]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end
end
