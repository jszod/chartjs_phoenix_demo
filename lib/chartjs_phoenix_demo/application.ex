defmodule ChartjsPhoenixDemo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      # Don't start for this non-database demo
      # ChartjsPhoenixDemo.Repo,
      # Start the Telemetry supervisor
      ChartjsPhoenixDemoWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ChartjsPhoenixDemo.PubSub},
      # Start the Endpoint (http/https)
      ChartjsPhoenixDemoWeb.Endpoint
      # Start a worker by calling: ChartjsPhoenixDemo.Worker.start_link(arg)
      # {ChartjsPhoenixDemo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChartjsPhoenixDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ChartjsPhoenixDemoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
