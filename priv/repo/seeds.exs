# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
# ShemereyPosts.Repo.insert!(%ShemereyPosts.Post{title: "Applying Bootstrap theme to Phoenix app.",
# 	                                           subtitle: "Not using brunch or gulp way.",
# 	                                           path: "applying_bootstrap_theme_to_phoenix_app",
# 	                                           tags: ["elixir"]})
ShemereyPosts.Repo.insert!(%ShemereyPosts.Post{title: "Composite primary keys in Rails and Phoenix apps.",
	                                           subtitle: "Ecto and ActiveRecord behaive differently",
	                                           path: "composite_primaty_keys_in_rails_and_phoenix_apps",
	                                           tags: ["elixir", "ruby"]})
ShemereyPosts.Repo.insert!(%ShemereyPosts.Post{title: "Custom middleware with rescue database connection error and redirection to config form.",
                                             subtitle: "Establish db connection in runtime when database.yml config invalid.",
                                             path: "custom_middleware_with_rescue_db_connection_error_and_redirection",
                                             tags: ["ruby"]})

#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
