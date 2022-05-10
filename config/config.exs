import Config

config :generator,
  templates_dir: "./templates",
  templates: [
    {:example, "example"},
    {:service, {:git, "https://github.com/solfacil/service-template"}, "service-template"}
  ]
