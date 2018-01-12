defmodule VotingApp.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :email, :string
      add :name, :string
      add :created_at, :utc_datetime
    end
  end
end
