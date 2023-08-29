defmodule E3StarterElixir.Repo do
  use Ecto.Repo,
    otp_app: :e3_starter_elixir,
    adapter: Ecto.Adapters.Postgres
end
