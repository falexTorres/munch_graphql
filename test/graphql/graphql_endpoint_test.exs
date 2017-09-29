defmodule MunchGraphQLService.GraphQLEndpointTest do
  use MunchGraphQLService.ConnCase

  test "GET /graphql with simple query" do
    conn = get conn(), "/graphql/hello", query: "{ greeting }"
    assert json_response(conn, 200) == %{"data" => %{"greeting" => "Hello, world!"}}
  end
end
