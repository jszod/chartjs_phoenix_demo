defmodule ChartjsPhoenixDemoWeb.PageController do
  use ChartjsPhoenixDemoWeb, :controller

  # def index(conn, _params) do
  #   render(conn, "index.html")
  # end

  def index(conn, _params) do
    conn
    |> assign(:chart_data, [70, 30])
    |> render("index.html")
  end
end
