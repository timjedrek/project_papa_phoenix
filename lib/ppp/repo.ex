defmodule Ppp.Repo do
  use Ecto.Repo,
    otp_app: :ppp,
    adapter: Ecto.Adapters.Postgres
end
