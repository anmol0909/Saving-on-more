class HomesController < ApplicationController
  def index
    @homes = Home.last
    @categories = Category.all
  end
end
