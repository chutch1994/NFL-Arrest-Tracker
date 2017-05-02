use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :nfl_arrest_tracker, NflArrestTracker.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :nfl_arrest_tracker, NflArrestTracker.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "nfl_arrest_tracker_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
