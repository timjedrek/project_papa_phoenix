defmodule Ppp.UserSchool do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_schools" do

    field :user_id, :id
    field :school_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user_school, attrs) do
    user_school
    |> cast(attrs, [])
    |> validate_required([])
  end
end
