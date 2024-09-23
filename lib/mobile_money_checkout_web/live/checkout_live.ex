defmodule MobileMoneyCheckoutWeb.Checkoutlive do
  use MobileMoneyCheckoutWeb, :main_layout

  import MobileMoneyCheckoutWeb.Components.Header

  def mount(_params, _session, socket) do
    {:ok, assign(socket, current_step: :mobile_money, payment_status: :not_paid)}
  end

  def render(assigns) do
    ~H"""
    <.header_component />
    """
  end
end
