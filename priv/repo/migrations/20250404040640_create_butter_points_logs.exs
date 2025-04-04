defmodule Ppp.Repo.Migrations.CreateButterPointsLogs do
  use Ecto.Migration

  def change do
    create table(:butter_points_logs) do
      add :session_id, :string
      add :created_at, :utc_datetime
      add :comment_id, references(:comments, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:butter_points_logs, [:comment_id])
  end
end
