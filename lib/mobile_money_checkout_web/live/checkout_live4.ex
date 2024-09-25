defmodule MobileMoneyCheckoutWeb.CheckoutLive4 do
  use MobileMoneyCheckoutWeb, :main_layout

  import MobileMoneyCheckoutWeb.Components.Checkout4

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.checkout4 />
    """
  end
end
