defmodule MobileMoneyCheckout.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MobileMoneyCheckoutWeb.Telemetry,
      MobileMoneyCheckout.Repo,
      {DNSCluster,
       query: Application.get_env(:mobile_money_checkout, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MobileMoneyCheckout.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: MobileMoneyCheckout.Finch},
      # Start a worker by calling: MobileMoneyCheckout.Worker.start_link(arg)
      # {MobileMoneyCheckout.Worker, arg},
      # Start to serve requests, typically the last entry
      MobileMoneyCheckoutWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MobileMoneyCheckout.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MobileMoneyCheckoutWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
