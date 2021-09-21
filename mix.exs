# credo:disable-for-this-file Credo.Check.Readability.Specs
defmodule Hygeia.Umbrella.MixProject do
  @moduledoc false

  use Mix.Project

  def project do
    [
      name: "Hygeia",
      apps_path: "apps",
      version: "1.29.10",
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod or System.get_env("BUILD_EMBEDDED") in ["1", "true"]
    ]
  end
end
