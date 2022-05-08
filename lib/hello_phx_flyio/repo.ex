defmodule HelloPhxFlyio.Repo do
  use Ecto.Repo,
    otp_app: :hello_phx_flyio,
    adapter: Ecto.Adapters.Postgres
end
