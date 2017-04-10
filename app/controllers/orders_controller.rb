class OrdersController < ApplicationController

	before_action :set_product, only: [:create]
  
	def create
		@order = current_user.orders.build
		@order.product = @product
		if @order.save
    	json_response(@order.as_json( only: [:id, :created_at],
      															include: { product: { only: [:id, :name, :price] } })
    								)
    else
    	json_response(@order.errors, :error)
    end
	end

  private

  def order_params
    # whitelist params
    params.permit(:product_id)
  end

  def set_product
  	@product = Product.find(params[:product_id]) #Product.create!(product_params)
  end
end