# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :ecto_neo4j, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:ecto_neo4j, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

config :neo4j_sips, Neo4j,
  url: "http://localhost:7474",
  pool_size: 5,
  max_overflow: 2,
  timeout: 30,
  basic_auth: [username: "neo4j", password: "asdf"]

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#

import_config "#{Mix.env}.exs"
