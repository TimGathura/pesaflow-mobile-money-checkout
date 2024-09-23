defmodule MobileMoneyCheckout.Repo do
  use Ecto.Repo,
    otp_app: :mobile_money_checkout,
    adapter: Ecto.Adapters.Postgres
end
