use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :shemerey_posts, ShemereyPosts.Endpoint,
  http: [port: 4001],
  secret_key_base: "RB7VC/5LZ2/Vkw0BSb/xqcs9Vpwn9jOPoJXhU2I5eBtvNzs6WH5X0JILI4kMIj0Z",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :shemerey_posts, ShemereyPosts.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "shemerey_posts_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
