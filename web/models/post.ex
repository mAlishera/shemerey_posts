defmodule ShemereyPosts.Post do
  use ShemereyPosts.Web, :model

  schema "posts" do
    field :title, :string
    field :subtitle, :string
    field :path, :string
    field :author, :string, default: "Ekaterina Shemerey"
    field :tags, {:array, :string}, default: []

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :subtitle, :path, :author])
    |> validate_required([:title, :subtitle, :path, :author])
  end

end
