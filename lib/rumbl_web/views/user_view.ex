defmodule RumblWeb.UserView do
  use RumblWeb, :view
  alias Rumbl.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end

  def get_all_users() do
    Rumbl.Repo.all(User)
  end

end