defmodule HirebrianWeb.PageController do
  use HirebrianWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
