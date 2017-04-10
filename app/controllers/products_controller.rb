class ProductsController < ApplicationController
  skip_before_action :authorize_request, only: [:index, :search]
	before_action :set_product, only: [:show, :update, :destroy, :like]

  # GET /products
  def index

    if params[:sort] == 'likes'
      @products = Product.likes.paginate(page: params[:page], per_page: 10)
    else
      @products = Product.paginate(page: params[:page], per_page: 10)
    end

    json_response(@products)

  end

  def search
    
  end

  # POST /products
  def create
    @product = Product.create!(product_params)
    json_response(@product, :created)
  end

  # GET /products/:id
  def show
    json_response(@product)
  end

  # PUT /products/:id
  def update
    @product.update(product_params)
    head :no_content
  end

  # DELETE /products/:id
  def destroy
    @product.destroy
    head :no_content
  end

  def like
    like = Like.create!(user_id: current_user.id, product_id: @product.id)
    json_response(like, :created)
  end

  private

  def product_params
    # whitelist params
    params.permit(:name, :price, :stock)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
