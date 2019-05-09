defmodule Cherry.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Cherry.Worker.start_link(arg)
      # {Cherry.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    Application.ensure_all_started(:hound)
    opts = [strategy: :one_for_one, name: Cherry.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
