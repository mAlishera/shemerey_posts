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
  root: Path.dirname(__DIR__),
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
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

config :ex_twilio,
  account_sid:   {:system, "TWILIO_ACCOUNT_SID"},
  auth_token:    {:system, "TWILIO_AUTH_TOKEN"}

config :shemerey_posts, ShemereyPosts.Mailer,
  adapter: Bamboo.SMTPAdapter,
  server: System.get_env("SMTP_SERVER"),
  port: 465,
  username: System.get_env("SMTP_USERNAME"),
  password: System.get_env("SMTP_PASSWORD"),
  tls: :if_available, # can be `:always` or `:never`
  ssl: true, # can be `false`
  retries: 2
