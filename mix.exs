defmodule DNSSEC.Mixfile do
  use Mix.Project

  def project do
    [ app: :dnssec,
      version: "0.1.1",
      elixir: "~> 1.7",
      description: "DNSSEC Library",
      package: package(),
      deps: deps()]
  end

  def package do
    [
      files: ~w(include priv src mix.exs LICENSE),
      licenses: ["Apache-2.0"],
      maintainers: ["Namdak Tonpa"],
      name: :dnssec,
      links: %{"GitHub" => "https://github.com/5HT/dnssec"}
    ]
  end

  def application, do: [applications: [:kernel, :stdlib, :crypto, :base32]]
  def deps, do: [{:base32, "~> 0.1.0"},{:ex_doc, "~> 0.11", only: :dev}]
end
