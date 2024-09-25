defmodule MobileMoneyCheckoutWeb.Components.Checkout5 do
  use MobileMoneyCheckoutWeb, :html

  embed_templates "/checkout5.html"

  def checkout5_func(assigns) do
    ~H"""
    <.checkout5 />
    """
  end
end
