class OrdersController < ApplicationController
  




  private

  def order_params
    # whitelist params
    params.permit(:product_id)
  end
end