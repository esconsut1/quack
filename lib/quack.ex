defmodule Quack do
  @moduledoc false

  use Application

  @doc false
  def start(_type, _args) do
    children = [
      %{
        id: Quack.Mama,
        type: :worker,
        start: {Quack.Mama, :start_link, []}
      },
      %{
        id: Quack.Duckling,
        type: :worker,
        start: {Quack.Duckling, :start_link, []}
      }
    ]

    opts = [strategy: :one_for_one, name: Quack.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
