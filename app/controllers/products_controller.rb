class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @categories = Category.where(active: true).order(:priority)
    @loop_size = 3
    @num_batches = (@categories.count / @loop_size.to_f).ceil

    # setting up the meta tags
    prepare_meta_tags(
      title: "Explore Elegance: Elan Furnishing's Exquisite Home Decor Collections",
      description: "Dive into the world of Elan Furnishing's curated collections, featuring fine fabrics, furniture, accessories, and bespoke decor. Transform your space today",
      current_url: request.url
    )
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @category = Category.friendly.find(params[:id])

      # Setting up the meta tags, title and description
      @page_title = @category.name

      set_meta_tags site: @page_title

      set_meta_tags og: {
        title:    @page_title,
        image:    [
          {
            _: "#{request.protocol}#{request.host_with_port}" + @category.image_url(:large),
            width: 1200,
            height: 625,
          },
          {
            _: "#{request.protocol}#{request.host_with_port}" + @category.image_url(:large),
            width: 400,
            height: 350,
          },
          {
            _: "#{request.protocol}#{request.host_with_port}" + @category.image_url(:medium),
            width: 300,
            height: 150,
          },
          {
            _: "#{request.protocol}#{request.host_with_port}" + @category.image_url(:small),
            width: 100,
            height: 70,
          }
        ]
      }

      set_meta_tags twitter: {
        title: @page_title,
        image: "#{request.protocol}#{request.host_with_port}" + @category.image_url(:large)
      }

    end
end
