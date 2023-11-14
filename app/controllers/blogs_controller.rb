class BlogsController < ApplicationController
  def index
    @blogs_of_3 = Blog.all_published_data.order('published_dt DESC').first(3)
    @all_blogs = Blog.all_published_data.where.not(
      id: @blogs_of_3.pluck(:id)
    ).order('published_dt DESC').first(3)
    puts "===> @all_blogs: ", @all_blogs.count
  end

  def show
    @blog = Blog.friendly.find(params[:id])
  end
end
