defmodule CorePhoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      CorePhoenixWeb.Telemetry,
      # Start the Ecto repository
      CorePhoenix.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: CorePhoenix.PubSub},
      # Start Finch
      {Finch, name: CorePhoenix.Finch},
      # Start the Endpoint (http/https)
      CorePhoenixWeb.Endpoint
      # Start a worker by calling: CorePhoenix.Worker.start_link(arg)
      # {CorePhoenix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CorePhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CorePhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
