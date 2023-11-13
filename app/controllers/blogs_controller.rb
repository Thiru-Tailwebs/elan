class BlogsController < ApplicationController
  def index
    @blogs = Blog.all_published_data.order('published_dt DESC')
  end

  def show
    @blog = Blog.friendly.find(params[:id])
  end
end
