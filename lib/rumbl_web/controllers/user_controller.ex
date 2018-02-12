defmodule Rumbl.UserController do
  use RumblWeb, :controller
  alias Rumbl.Repo

  def index(conn, _params) do
  users = Repo.all_users(Rumbl.User)
  render conn, "index.html", users: users
  end
end