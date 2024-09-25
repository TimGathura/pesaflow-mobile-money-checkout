defmodule MobileMoneyCheckoutWeb.CheckoutLive5 do
  use MobileMoneyCheckoutWeb, :main_layout

  import MobileMoneyCheckoutWeb.Components.Checkout5

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.checkout5 />
    """
  end
end
