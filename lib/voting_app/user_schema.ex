defmodule VotingApp.User do
  use Ecto.Schema

  schema "user" do
    field :email, :string
    field :name, :string
    field :created_at, :utc_datetime
  end

  def changeset(user, params \\ %{}) do
    user
    |> Ecto.Changeset.cast(params, [:email, :name, :created_at])
    |> Ecto.Changeset.validate_required([:email, :name])
  end
end
