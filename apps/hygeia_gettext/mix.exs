# credo:disable-for-this-file Credo.Check.Readability.Specs
defmodule HygeiaGettext.MixProject do
  @moduledoc false

  use Mix.Project

  def project do
    [
      app: :hygeia_gettext,
      version: "0.0.0-noversion",
      build_path: "../../_build",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod or System.get_env("BUILD_EMBEDDED") in ["1", "true"],
      compilers: [:gettext] ++ Mix.compilers(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gettext, "~> 0.13"}
    ]
  end
end
