defmodule Ppp.ContactPerson do
  use Ecto.Schema
  import Ecto.Changeset

  schema "contact_persons" do
    field :name, :string
    field :role, :string
    field :email, :string
    field :phone, :string
    field :school_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(contact_person, attrs) do
    contact_person
    |> cast(attrs, [:name, :role, :email, :phone])
    |> validate_required([:name, :role, :email, :phone])
  end
end
