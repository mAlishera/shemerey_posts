defmodule ShemereyPosts.Post do
  use ShemereyPosts.Web, :model

  schema "posts" do
    field :title, :string
    field :author, :string
    field :ruby, :boolean
    field :elixir, :boolean

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :author])
    |> validate_required([:title, :author])
  end

end
