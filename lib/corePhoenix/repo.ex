defmodule CorePhoenix.Repo do
  use Ecto.Repo,
    otp_app: :corePhoenix,
    adapter: Ecto.Adapters.Postgres
end
