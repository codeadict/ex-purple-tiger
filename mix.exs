defmodule ExPurpleTiger.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :ex_purple_tiger,
      version: @version,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "ExPurpleTiger",
      source_url: "https://github.com/codeadict/ex_purple_tiger"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "ExPurpleTiger generates animal-based hash digests meant to be memorable and human-readable."
  end

  defp package do
    [
      name: "ex_purple_tiger",
      maintainers: ["Dairon Medina Caro"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/codeadict/ex_purple_tiger"},
      files: ~w(.formatter.exs mix.exs README.md CHANGELOG.md lib)
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end
end
