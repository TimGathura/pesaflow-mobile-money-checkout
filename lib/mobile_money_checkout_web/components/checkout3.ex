defmodule MobileMoneyCheckoutWeb.Components.Checkout3 do
  use MobileMoneyCheckoutWeb, :html

  embed_templates "/checkout3.html"

  def checkout3_func(assigns) do
    ~H"""
    <.checkout3 />
    """
  end
end
