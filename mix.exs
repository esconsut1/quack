defmodule Quack.MixProject do
  use Mix.Project

  def project do
    [
      app: :quack,
      version: "0.1.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      description: description(),
      package: package(),
      name: "Quack",
      source_url: "https://github.com/azohra/Quack"
    ]
  end

  def application do
    [
      mod: {Quack, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 2.1"},
      {:excoveralls, "~> 0.16", only: [:test, :dev]},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:jason, "~> 1.4"}
    ]
  end

  defp description() do
    "A simple, yet beautiful, Elixir Logger backend for Slack."
  end

  defp package() do
    [
      files: ~w(lib .formatter.exs mix.exs README.md LICENSE.md CHANGELOG.md),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/azohra/Quack"}
    ]
  end
end
