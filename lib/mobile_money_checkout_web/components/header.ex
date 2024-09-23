defmodule MobileMoneyCheckoutWeb.Components.Header do
  use MobileMoneyCheckoutWeb, :html

  embed_templates "/header_component.html"

  def checkout(assigns) do
    ~H"""
    <.header_component />
    """
  end
end
