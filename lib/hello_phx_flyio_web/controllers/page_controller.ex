defmodule HelloPhxFlyioWeb.PageController do
  use HelloPhxFlyioWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
