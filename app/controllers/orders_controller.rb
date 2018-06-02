class OrdersController < ApplicationController
  #def index
  #end
  skip_before_action :verify_authenticity_token, only: [:create]

  http_basic_authenticate_with name: "alex", password: "09031989", only: :index

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(params.require(:order).permit!)
    @order.save

    redirect_to '/ty'
  end
end
