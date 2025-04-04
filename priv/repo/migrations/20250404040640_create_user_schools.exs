defmodule Ppp.Repo.Migrations.CreateUserSchools do
  use Ecto.Migration

  def change do
    create table(:user_schools) do
      add :user_id, references(:users, on_delete: :nothing)
      add :school_id, references(:schools, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:user_schools, [:user_id])
    create index(:user_schools, [:school_id])
  end
end
