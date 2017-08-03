defmodule Meta.Mixfile do
  use Mix.Project

  def project do
    [app: :meta,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp deps do
    []
  end

  defp aliases do
    ["test": ["test --exclude skip"],
     "compile": ["compile --warnings-as-errors"]]
  end
end
