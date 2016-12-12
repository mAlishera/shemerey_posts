ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ShemereyPosts.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ShemereyPosts.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ShemereyPosts.Repo)

