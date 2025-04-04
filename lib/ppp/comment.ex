defmodule Ppp.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :approved, :boolean, default: false
    field :content, :string
    field :butter_points, :integer
    field :user_id, :id
    field :school_id, :id
    field :parent_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:content, :approved, :butter_points])
    |> validate_required([:content, :approved, :butter_points])
  end
end
