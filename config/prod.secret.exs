use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :graphql_api, GraphqlApiWeb.Endpoint,
  secret_key_base: "djW61fWdONLUOSSXHRHXK6DvzpPPwVEg25aiuFPqSh3uuGzsZ2I2/vh//+HsAxlQ"

# Configure your database
config :graphql_api, GraphqlApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "graphql_api_prod",
  pool_size: 15
