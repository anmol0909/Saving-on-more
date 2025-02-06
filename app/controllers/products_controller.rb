class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @seleted_category_id = params[:category_id]
    if @seleted_category_id
      @products = Product.where(category_id: @seleted_category_id)
    else
      @products = Product.all
    end
    @products = @products.order_id_desc.paginate(page: params[:page], per_page: 18)
  end
end
