# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :voting_app, VotingApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "voting_app_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# General application configuration
config :voting_app,
  ecto_repos: [VotingApp.Repo]

# Configures the endpoint
config :voting_app, VotingAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H7a1zigBLnAuRT8xKjD6Tz9JCqdXHHJCquQ9lR9a/WKpDPojJ1Z6qalSh1aMfWZH",
  render_errors: [view: VotingAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VotingApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
