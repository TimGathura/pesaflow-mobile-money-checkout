defmodule MobileMoneyCheckoutWeb.CheckoutLive do
  use MobileMoneyCheckoutWeb, :main_layout

  import MobileMoneyCheckoutWeb.Components.Checkout

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, current_step: 1, payment_status: :not_paid)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.checkout />
    """
  end
end
