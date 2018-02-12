defmodule Rumbl.Repo do
  use Ecto.Repo, otp_app: :rumbl

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  # def init(_, opts) do
  #   {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  # end

  def all_users(Rumbl.User) do
    [%Rumbl.User{id: "1", name: "José", username: "josevalim", password: "elixir"},
    %Rumbl.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
    %Rumbl.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}]
  end

  def all_users(_module), do: []

  def get_users(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by_id(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end

end
