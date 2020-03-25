use Mix.Config

# Configure your database
config :database, Database.Repo,
  username: "root",
  password: "password",
  database: "database_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :frontend, Frontend.Endpoint,
  http: [port: 4002],
  server: false
