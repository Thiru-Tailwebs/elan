class ProductsController < ApplicationController
  def index
    @categories = Category.where(active: true).order(:priority)
  end

  def show
    @category = Category.friendly.find(params[:id])
  end
end
