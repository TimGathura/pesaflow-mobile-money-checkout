defmodule MobileMoneyCheckoutWeb.CheckoutLive3 do
  use MobileMoneyCheckoutWeb, :main_layout

  import MobileMoneyCheckoutWeb.Components.Checkout3

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.checkout3 />
    """
  end
end
