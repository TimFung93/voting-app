defmodule VotingAppWeb.PageController do
  use VotingAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
