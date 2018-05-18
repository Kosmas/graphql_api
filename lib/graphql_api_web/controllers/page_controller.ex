defmodule GraphqlApiWeb.PageController do
  use GraphqlApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
