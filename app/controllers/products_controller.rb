class ProductsController < ApplicationController
  def index
    @categories = Category.where(active: true).order(:priority)
    @loop_size = 3
    @num_batches = (@categories.count / @loop_size.to_f).ceil
  end

  def show
    @category = Category.friendly.find(params[:id])
  end
end
