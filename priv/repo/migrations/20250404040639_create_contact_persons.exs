defmodule Ppp.Repo.Migrations.CreateContactPersons do
  use Ecto.Migration

  def change do
    create table(:contact_persons) do
      add :name, :string
      add :role, :string
      add :email, :string
      add :phone, :string
      add :school_id, references(:schools, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:contact_persons, [:school_id])
  end
end
