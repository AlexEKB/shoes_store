class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    @order = Order.new(params.require(:order).permit!)
    @order.save

    redirect_to '/'
  end
end
