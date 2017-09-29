defmodule MunchGraphQLService.PageController do
  use MunchGraphQLService.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
