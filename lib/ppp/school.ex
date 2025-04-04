defmodule Ppp.School do
  use Ecto.Schema
  import Ecto.Changeset

  schema "schools" do
    field :name, :string
    field :state, :string
    field :description, :string
    field :approved, :boolean, default: false
    field :city, :string
    field :airport, :string
    field :est_planes, :integer
    field :est_cfis, :integer
    field :part_141, :boolean, default: false
    field :part_61, :boolean, default: false
    field :training_types, {:array, :string}
    field :accelerated_programs, :boolean, default: false
    field :examining_authority, :boolean, default: false
    field :date_established, :date
    field :is_featured, :boolean, default: false

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(school, attrs) do
    school
    |> cast(attrs, [:name, :state, :city, :airport, :description, :est_planes, :est_cfis, :part_141, :part_61, :training_types, :accelerated_programs, :examining_authority, :date_established, :is_featured, :approved])
    |> validate_required([:name, :state, :city, :airport, :description, :est_planes, :est_cfis, :part_141, :part_61, :training_types, :accelerated_programs, :examining_authority, :date_established, :is_featured, :approved])
  end
end
