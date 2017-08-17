# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hirebrian,
  ecto_repos: [Hirebrian.Repo]

# Configures the endpoint
config :hirebrian, HirebrianWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "C3WvzFxDq5pSJQ3rPCFYmVK71iDNAVJTOWnCsf8rqLVsJ2jFlCxV0OS8iEqmglJ+",
  render_errors: [view: HirebrianWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hirebrian.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
