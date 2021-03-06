import Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :hello_phx_flyio, HelloPhxFlyio.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "hello_phx_flyio_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_phx_flyio, HelloPhxFlyioWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ck3KTi380rHnU6PCy6Mg3pXTOb4iPA9P8SihMh3zCaz2KXWk2vPGa0uiNza7OpZd",
  server: false

# In test we don't send emails.
config :hello_phx_flyio, HelloPhxFlyio.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
