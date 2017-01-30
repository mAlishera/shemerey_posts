defmodule ShemereyPosts.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :subtitle, :string
      add :path, :string
      add :tags, {:array, :string}, default: []
      add :author, :string, default: "Ekaterina Shemerey"

      timestamps()
    end
  end
end
