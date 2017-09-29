# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MunchGraphQLService.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias MunchGraphQLService.Truck
alias MunchGraphQLService.Repo

# resets the database, only use this the first time seeding
Repo.delete_all(Truck)

Repo.insert!(%Truck{
  key: "AxisSmokehouse",
  title: "Axis Smokehouse",
  subtitle: "Classic Texas Bbq",
  image: "/images/Axis-Smokehouse.png"
})

Repo.insert!(%Truck{
  key: "MahaleysAtThePark",
  title: "Mahaley's At The Park",
  subtitle: "The same tastes from Mahaley's Patio",
  image: "/images/Mahaleys-At-The-Park.png"
})

Repo.insert!(%Truck{
  key: "MauiShaveIce&Dogz",
  title: "Maui Shave Ice & Dogz",
  subtitle: "We have Snowcones and Hot Dogs for dayz",
  image: "/images/Maui-Shave-Ice-&-Dogz.png"
})

Repo.insert!(%Truck{
  key: "TheBeverageBarn",
  title: "The Beverage Barn",
  subtitle: "All the things to quench your thirst!",
  image: "/images/The-Beverage-Barn.png"
})