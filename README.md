# Generator

Elixir project templates generation.

## Installation

### Github

*Latest*
```sh
> mix archive.install github viniciuslcpereira97/template-generator
```

*Specific branch*
```sh
> mix archive.install github viniciuslcpereira97/template-generator branch $BRANCH
```

*Specific version*
```sh
> mix archive.install github viniciuslcpereira97/template-generator tag $RELEASE_TAG
```

### Hex
```sh
> mix archive.install viniciuslcpereira97/template-generator
```

## Configure

### Example template folder structure
```
.
└── example
    ├── schemas
    │ └── example.ex
    └── services
        ├── example.ex
        └── user
            └── user.ex
```

Set your templates directory's path in your `config.exs`.

```ex
config :generator,
  templates_dir: "./templates",
  templates: [
    my_awesome_template: "example"
  ]
```

`templates_dir`: Directory with all available templates
`templates`: the key is an alias for your template and the value is the template folder name found at your `templates_dir`


## Usage

To create a new project based on an template you should run the following command:

```sh
> mix generator.new ./apps/my-awesome-new-folder --template=my_awesome_template
```

## Results

### Project folder structure before running the task
```
.
├── generator.ex
├── mix
│ └── tasks
│     └── generator.new.ex
├── path
│ ├── adapters
│ │ ├── git_resolver.ex
│ │ ├── json_resolver.ex
│ │ ├── local_resolver.ex
│ │ ├── path_creator.ex
│ │ ├── path_resolver.ex
│ │ ├── template_directory.ex
│ │ └── template_file.ex
│ ├── logic
│ └── schemas
│     ├── template_directory.ex
│     └── template_file.ex
├── paths.ex
├── project
│ ├── adapters
│ │ └── project.ex
│ ├── logic
│ └── schemas
│     └── project.ex
├── projects.ex
├── template
│ ├── adapters
│ │ └── template.ex
│ ├── logic
│ └── schemas
│     └── template.ex
└── templates.ex

```

### Project folder structure after running the task
```
.
├── generator.ex
├── mix
│ └── tasks
│     └── generator.new.ex
├── my-awesome-new-folder
│ ├── schemas
│ │ └── example.ex
│ └── services
│     ├── example.ex
│     └── user
│         └── user.ex
├── path
│ ├── adapters
│ │ ├── git_resolver.ex
│ │ ├── json_resolver.ex
│ │ ├── local_resolver.ex
│ │ ├── path_creator.ex
│ │ ├── path_resolver.ex
│ │ ├── template_directory.ex
│ │ └── template_file.ex
│ ├── logic
│ └── schemas
│     ├── template_directory.ex
│     └── template_file.ex
├── paths.ex
├── project
│ ├── adapters
│ │ └── project.ex
│ ├── logic
│ └── schemas
│     └── project.ex
├── projects.ex
├── template
│ ├── adapters
│ │ └── template.ex
│ ├── logic
│ └── schemas
│     └── template.ex
└── templates.ex
```
