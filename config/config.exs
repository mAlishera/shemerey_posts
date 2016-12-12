# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :shemerey_posts,
  ecto_repos: [ShemereyPosts.Repo]

# Configures the endpoint
config :shemerey_posts, ShemereyPosts.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "/1A69CWjtgoveHxdW077sr5/wJXQTk+wckVkhL9b4MO7JOe9sn4cJFvFBiAH3iW6",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: ShemereyPosts.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
