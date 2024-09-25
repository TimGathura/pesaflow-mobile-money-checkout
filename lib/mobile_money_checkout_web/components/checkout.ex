defmodule MobileMoneyCheckoutWeb.Components.Checkout do
  use MobileMoneyCheckoutWeb, :html

  embed_templates "/checkout.html"

  def checkout_func(assigns) do
    ~H"""
    <.checkout />
    """
  end
end
