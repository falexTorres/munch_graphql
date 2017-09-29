use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :munch_graphql_service, MunchGraphQLService.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :munch_graphql_service, MunchGraphQLService.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "munch_graphql_service_test",
  hostname: "localhost",
  pool_size: 10
