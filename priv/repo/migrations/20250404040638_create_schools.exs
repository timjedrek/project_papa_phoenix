defmodule Ppp.Repo.Migrations.CreateSchools do
  use Ecto.Migration

  def change do
    create table(:schools) do
      add :name, :string
      add :state, :string
      add :city, :string
      add :airport, :string
      add :description, :text
      add :est_planes, :integer
      add :est_cfis, :integer
      add :part_141, :boolean, default: false, null: false
      add :part_61, :boolean, default: false, null: false
      add :training_types, {:array, :string}
      add :accelerated_programs, :boolean, default: false, null: false
      add :examining_authority, :boolean, default: false, null: false
      add :date_established, :date
      add :is_featured, :boolean, default: false, null: false
      add :approved, :boolean, default: false, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
