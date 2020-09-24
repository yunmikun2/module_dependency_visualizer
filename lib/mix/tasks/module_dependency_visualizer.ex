defmodule Mix.Tasks.ModuleDependencyVisualizer do
  @moduledoc """
  Create module dependency visualization.
  """

  @shortdoc "Create module dependency visualization"

  use Mix.Task

  @doc false
  def run(_) do
    Mix.Project.app_path()
    |> String.replace(~r[_build/.*/lib/.*$], "")
    |> Path.join("lib/**/*.{ex, exs}")
    |> Path.wildcard()
    |> ModuleDependencyVisualizer.run()
  end
end
