class BlogsController < ApplicationController
  def index
    @blogs_of_3 = Blog.all_published_data.order('published_dt DESC').first(3)
    @all_blogs = Blog.all_published_data.where.not(
      id: @blogs_of_3.pluck(:id)
    ).order('published_dt DESC')
    @loop_size = 2
    @num_batches = (@all_blogs.count / @loop_size.to_f).ceil
  end

  def show
    @blog = Blog.friendly.find(params[:id])
    @all_blogs = Blog.all_published_data.where.not(
      id: @blog.id
    ).order('published_dt DESC')
    @loop_size = 2
    @num_batches = (@all_blogs.count / @loop_size.to_f).ceil
  end
end
