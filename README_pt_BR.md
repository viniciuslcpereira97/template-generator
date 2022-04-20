# Template Generator

Projeto em Elixir para gerar projetos a partir de templates.

## Instalação

### Github

*Latest*
```sh
> mix archive.install github viniciuslcpereira97/template-generator
```

*Branch específica*
```sh
> mix archive.install github viniciuslcpereira97/template-generator branch $BRANCH
```

*Versão específica*
```sh
> mix archive.install github viniciuslcpereira97/template-generator tag $RELEASE_TAG
```

### Hex
```sh
> mix archive.install viniciuslcpereira97/template-generator
```

## Configuração

### Estrutura de pastas do template de exemplo
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

Defina o path do seu diretório de templates no arquivo `config.exs`.

```ex
config :generator,
  templates_dir: "./templates",
  templates: [
    my_awesome_template: "example"
  ]
```

`templates_dir`: Diretório com todos os templates disponíveis
`templates`: a chave na lista corresponde ao `apelido` do seu template utilizado ao rodar o comando mix e o valor corresponde ao nome da pasta do template encontrada no `templates_dir`

## Como usar

Para criar um novo projeto baseado em um template você deve executar o comando a seguir:

```sh
> mix generator.new ./apps/my-awesome-new-folder --template=my_awesome_template
```

## Resultados

### Estrutura de pasta do projeto antes de executar a Task
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

### Estrutura de pasta do projeto depois de executar a Task
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
