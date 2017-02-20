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
ShemereyPosts.Repo.delete_all(ShemereyPosts.Post)
ShemereyPosts.Repo.insert!(%ShemereyPosts.Post{title: "Composite primary keys in Rails and Phoenix apps.",
	                                           subtitle: "Ecto and ActiveRecord behaive differently",
	                                           path: "composite_primaty_keys_in_rails_and_phoenix_apps",
	                                           tags: ["elixir", "ruby"], inserted_at: Calecto.DateTimeUTC.from_erl!({{2016, 11, 20}, {17, 21, 19, 827336}})})
ShemereyPosts.Repo.insert!(%ShemereyPosts.Post{title: "Custom middleware to rescue database connection error and redirect to config form.",
                                             subtitle: "Establishes db connection in runtime when database.yml config invalid.",
                                             path: "custom_middleware_to_rescue_db_connection_error_and_redirect",
                                             tags: ["ruby"], inserted_at: %Ecto.DateTime{year: 2017, month: 01, day: 17, hour: 0, min: 0, sec: 0, usec: 0}})

#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
