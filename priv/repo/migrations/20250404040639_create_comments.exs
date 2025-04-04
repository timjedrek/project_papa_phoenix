defmodule Ppp.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :text
      add :approved, :boolean, default: false, null: false
      add :butter_points, :integer
      add :user_id, references(:users, on_delete: :nothing)
      add :school_id, references(:schools, on_delete: :nothing)
      add :parent_id, references(:comments, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:comments, [:user_id])
    create index(:comments, [:school_id])
    create index(:comments, [:parent_id])
  end
end
