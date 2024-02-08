class BlogsController < ApplicationController
  before_action :set_blog, only: [:show]

  def index
    @blogs_of_3 = Blog.all_published_data.order('published_dt DESC').first(3)
    @all_blogs = Blog.all_published_data.where.not(
      id: @blogs_of_3.pluck(:id)
    ).order('published_dt DESC')
    @loop_size = 2
    @num_batches = (@all_blogs.count / @loop_size.to_f).ceil

    # setting up the meta tags
    prepare_meta_tags(
      title: "Design Diaries: Explore Trends, Tips, and Transformations with Elan Furnishing",
      description: "Dive into Elan Furnishing's blog haven for design enthusiasts. Uncover the latest trends, expert tips, and inspiring transformations, as we share",
      current_url: request.url
    )
  end

  def show
    @all_blogs = Blog.all_published_data.where.not(
      id: @blog.id
    ).order('published_dt DESC')
    @loop_size = 2
    @num_batches = (@all_blogs.count / @loop_size.to_f).ceil
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])

      # Setting up the meta tags, title and description
      @page_title = @blog.name
      @page_description = @blog.description1

      set_meta_tags site: @page_title
      set_meta_tags description: @page_description

      set_meta_tags og: {
        title:    @page_title,
        description: @page_description,
        image:    [
          {
            _: "#{request.protocol}#{request.host_with_port}" + @blog.square_image_url(:large),
            width: 1200,
            height: 625,
          },
          {
            _: "#{request.protocol}#{request.host_with_port}" + @blog.square_image_url(:large),
            width: 400,
            height: 350,
          },
          {
            _: "#{request.protocol}#{request.host_with_port}" + @blog.square_image_url(:medium),
            width: 300,
            height: 150,
          },
          {
            _: "#{request.protocol}#{request.host_with_port}" + @blog.square_image_url(:small),
            width: 100,
            height: 70,
          }
        ]
      }

      set_meta_tags twitter: {
        title: @page_title,
        description: @page_description,
        image: "#{request.protocol}#{request.host_with_port}" + @blog.square_image_url(:large)
      }

    end
end
