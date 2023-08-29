defmodule E3StarterElixir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      E3StarterElixirWeb.Telemetry,
      # Start the Ecto repository
      E3StarterElixir.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: E3StarterElixir.PubSub},
      # Start Finch
      {Finch, name: E3StarterElixir.Finch},
      # Start the Endpoint (http/https)
      E3StarterElixirWeb.Endpoint
      # Start a worker by calling: E3StarterElixir.Worker.start_link(arg)
      # {E3StarterElixir.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: E3StarterElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    E3StarterElixirWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
