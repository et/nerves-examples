defmodule Blinky.Mixfile do
  use Mix.Project

  def project do
    [app: :blinky,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :nerves_io_led],
     mod: {Blinky, [:leds]}]
  end

  defp deps, do: [
    {:nerves_io_led, github: "nerves-project/nerves_io_led"},
    {:exrm, "~> 0.19.9"}
  ]

end
