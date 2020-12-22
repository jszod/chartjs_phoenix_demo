# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chartjs_phoenix_demo,
  ecto_repos: [ChartjsPhoenixDemo.Repo]

# Configures the endpoint
config :chartjs_phoenix_demo, ChartjsPhoenixDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/9cCC4OTq8iFLWJmAyPGlFE9pvUrVXbxzmUIhwrP9ghjwVceg/HsmglvMVN/hZQz",
  render_errors: [view: ChartjsPhoenixDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ChartjsPhoenixDemo.PubSub,
  live_view: [signing_salt: "ovcorzGh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
