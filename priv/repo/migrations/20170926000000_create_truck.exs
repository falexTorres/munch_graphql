defmodule MunchGraphQLService.Repo.Migrations.CreateTruck do
  use Ecto.Migration

  def change do
    create table(:trucks) do
      add :key, :string, comment: "the public key used to lookup a specific truck"
      add :title, :string, size: 50, comment: "the title of the truck displayed to users"
      add :subtitle, :string, size: 100, default: "Find us at Münch Food Park!", comment: "the truck's tagline/subtitle displayed to users"
      add :image, :string, size: 75, default: "/images/The-Beverage-Barn.png", comment: "the path of the image to be displayed for the truck to users"

      timestamps
    end
    
    unique_index(:truck, [:key])
    unique_index(:truck, [:title])

  end
end
