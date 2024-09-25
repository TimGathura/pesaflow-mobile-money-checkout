defmodule MobileMoneyCheckoutWeb.Components.Checkout2 do
  use MobileMoneyCheckoutWeb, :html

  embed_templates "/checkout2.html"

  def checkout2_func(assigns) do
    ~H"""
    <.checkout2 />
    """
  end
end
