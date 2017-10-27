defmodule ApiWeb.TestController do
  use ApiWeb, :controller

  def index(conn, _params) do
		json conn, %{id: "abc"}
  end
end
