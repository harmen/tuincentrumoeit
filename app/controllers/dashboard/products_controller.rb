module Dashboard
  class ProductsController < ApplicationController

    def index

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