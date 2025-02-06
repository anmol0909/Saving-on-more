class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order_id_desc.paginate(page: params[:page], per_page: 18)
  end
end
