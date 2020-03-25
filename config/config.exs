# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

# Configure Mix tasks and generators
config :database,
  ecto_repos: [Database.Repo]

config :frontend,
  generators: [context_app: :database]

# Configures the endpoint
config :frontend, Frontend.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TOCce2dtazD5hIUoQ+VPaVObP+xSe8jJZuSThng5JHL4sroE0OY9ZOzjjCDJCIv0",
  render_errors: [view: Frontend.ErrorView, accepts: ~w(json)],
  pubsub: [name: Frontend.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "WkvFNC1G"]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
