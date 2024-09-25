defmodule MobileMoneyCheckoutWeb.Components.Checkout4 do
  use MobileMoneyCheckoutWeb, :html

  embed_templates "/checkout4.html"

  def checkout4_func(assigns) do
    ~H"""
    <.checkout4 />
    """
  end
end
