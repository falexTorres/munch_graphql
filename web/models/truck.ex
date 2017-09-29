defmodule MunchGraphQLService.Truck do
  use MunchGraphQLService.Web, :model

  schema "trucks" do
    field :key, :string
    field :title, :string
    field :subtitle, :string
    field :image, :string

    timestamps
  end

  @required_fields ~w(key, title)
  @optional_fields ~w(image, subtitle)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  def find_by_key(key) do
    query = from t in MunchGraphQLService.Truck,
      where: t.key == ^key
    # this could break if more than theres more than 1 user with same name.
    MunchGraphQLService.Repo.one(query)
  end

  def find_by_title(title) do
    query = from t in MunchGraphQLService.Truck,
      where: t.title == ^title
    # this could break if more than theres more than 1 user with same name.
    MunchGraphQLService.Repo.one(query)
  end

  def find_by_id(id) do
    query = from t in MunchGraphQLService.Truck,
      where: t.id == ^id
    MunchGraphQLService.Repo.one(query)
  end

  def get_all_trucks do
    MunchGraphQLService.Repo.all(MunchGraphQLService.Truck)
  end
end
