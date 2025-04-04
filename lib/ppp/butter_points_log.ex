defmodule Ppp.ButterPointsLog do
  use Ecto.Schema
  import Ecto.Changeset

  schema "butter_points_logs" do
    field :session_id, :string
    field :created_at, :utc_datetime
    field :comment_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(butter_points_log, attrs) do
    butter_points_log
    |> cast(attrs, [:session_id, :created_at])
    |> validate_required([:session_id, :created_at])
  end
end
