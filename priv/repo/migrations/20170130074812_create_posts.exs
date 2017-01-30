defmodule ShemereyPosts.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :ruby, :boolean
      add :elixir, :boolean
      add :author, :string

      timestamps()
    end
  end
end
