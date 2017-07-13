# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ex_cms,
  namespace: ExCMS,
  ecto_repos: [ExCMS.Repo]

# Configures the endpoint
config :ex_cms, ExCMS.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pn5a1YnS4jfc/T5+TVk1EUCuNEoqJ5WRc2/vikPlyIIPurwxBT/yizPJibAzC/LT",
  render_errors: [view: ExCMS.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExCMS.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :xain, :after_callback, {Phoenix.HTML, :raw}

# ExAdmin
config :ex_admin,
  repo: ExCMS.Repo,
  module: ExCMS.Web,
  modules: [
    ExCMS.ExAdmin.Dashboard,
  ]



