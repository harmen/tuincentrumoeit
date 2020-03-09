module Dashboard
  class ProductsController < ApplicationController

    before_action :authenticate_user!

    def index
      @products = Product.all
    end

    def new
      @product = Product.new
    end

    def show
      @product = Product.find_by_id(params[:id])
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to products_path
      else
        render @product.errors
      end
    end

  end
end