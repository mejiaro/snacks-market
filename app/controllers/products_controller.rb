class ProductsController < ApplicationController
  skip_before_action :doorkeeper_authorize!, only: [:index, :search]
  before_action :is_admin?, only: [:update, :create, :destroy]
	before_action :set_product, only: [:show, :update, :destroy, :like]

  # GET /products
  def index

    if params[:sort] == 'likes'
      @products = Product.order_by_likes.paginate(page: params[:page], per_page: 10)
    else
      @products = Product.order_by_names.paginate(page: params[:page], per_page: 10)
    end

    json_response(@products)

  end

  def search
    @products = Product.starts_with(params[:name]).paginate(page: params[:page], per_page: 10)
    json_response(@products)
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
    #head :no_content
    json_response(@product)
  end

  # DELETE /products/:id
  def destroy
    @product.destroy
    head :no_content
  end

  def like
    like = current_user.likes.create!(product_id: @product.id)
    json_response(like, :created)
  end

  private

  def product_params
    # whitelist params
    params.permit(:name, :price, :stock, :image)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
