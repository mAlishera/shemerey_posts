# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
ShemereyPosts.Repo.insert!(%ShemereyPosts.Post{title: "applying_bootstrap_theme_to_phoenix_app", author: "Ekaterina Shemerey", elixir: true})
ShemereyPosts.Repo.insert!(%ShemereyPosts.Post{title: "composite_primaty_keys_in_rails_and_phoenix_apps", author: "Ekaterina Shemerey", elixir: true, ruby: true})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
