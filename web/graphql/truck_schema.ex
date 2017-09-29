defmodule GraphQL.Schema.Truck do
  alias GraphQL.Schema
  alias GraphQL.Type.{ObjectType, String, Int, List}
  alias GraphQL.Schema.Truck.Truck
  

  defmodule Truck do
    def type do
      %ObjectType{
        name: "Truck",
        fields: %{
          id: %{type: %Int{}},
          key: %{type: %String{}},
          title: %{type: %String{}},
          subtitle: %{type: %String{}},
          image: %{type: %String{}}
        }
      }
    end
  end

  def query do
      %ObjectType{
        name: "Query",
        fields: %{
          truck: %{
            type: Truck,
            args: %{
              id: %{
                  type: %Int{},
                  description: "This arg is optional. If this is passed, then 'key' and 'title' don't need to be passed."
              },
              key: %{
                type: %String{},
                description: "If omitted, returns the Münch Beverage Barn. If provided, returns the truck found by the key."
              },
              title: %{
                type: %String{},
                description: "This arg is optional. If this is passed, then 'key' arg doesn't need to be passed."
              }
            },
            resolve: fn
              _source, %{id: i}, _info -> MunchGraphQLService.Truck.find_by_id(i)
              _source, %{key: k}, _info -> MunchGraphQLService.Truck.find_by_key(k)
              _source, %{title: t}, _info -> MunchGraphQLService.Truck.find_by_title(t)  
              _source, _args, _info -> MunchGraphQLService.Truck.find_by_key("TheBeverageBarn")                      
            end
          },
          trucks: %{
            type: %List{ofType: Truck},
            resolve: fn _ ->
              MunchGraphQLService.Truck.get_all_trucks()
            end
          }
        }
      }
  end

  def schema do
    %Schema{query: query}
  end
end
