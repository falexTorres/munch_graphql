defmodule MunchGraphQLService.PageControllerTest do
  use MunchGraphQLService.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to GraphQL Elixir!"
  end
end
