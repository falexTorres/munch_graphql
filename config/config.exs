# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the namespace used by Phoenix generators
config :munch_graphql_service,
  app_namespace: MunchGraphQLService

# Configures the endpoint
config :munch_graphql_service, MunchGraphQLService.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "yIsXDFWuDjWW2tKFVK3jFNaCUsXyWqao+jP9x0bUQjJotj//FIAO0PY5EYmJvgOO",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: MunchGraphQLService.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
