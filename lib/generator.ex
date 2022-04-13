defprotocol Generator do
  @fallback_to_any true
  def generate(template)
end

defimpl Generator, for: Any do
  @moduledoc false
  alias Generator.Paths

  def generate(%_{} = template) do
    template
    |> Paths.build()
    |> Paths.create()
  end
end
