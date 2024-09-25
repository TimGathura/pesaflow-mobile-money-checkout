defmodule MobileMoneyCheckoutWeb.CheckoutLive2 do
  use MobileMoneyCheckoutWeb, :main_layout

  import MobileMoneyCheckoutWeb.Components.Checkout2

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <.checkout2 />
    """
  end

end
