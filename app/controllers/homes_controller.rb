class HomesController < ApplicationController
  before_action :set_category, only: %i[
    index media
  ]

  def index
    @banner_image = HeaderImage.where(active: true).last
    @blogs_featured = Blog.where(is_featured: true).last(3)
    @blogs_latest = Blog.all_published_data.where.not(
      id: @blogs_featured.pluck(:id)
    ).order('published_dt DESC').first(3)
  end

  def media
  end

  def contact_us
  end

  def blogs
  end

  def our_collections
  end

  def our_story
  end

  def brands
    @brand_categories = BrandCategory.where(
      active: true
    ).order(:priority)
  end

  def clientele
    @clientele_image = ClienteleImage.where(
      active: true
    ).order(:priority)
  end

  def our_services
  end

  def book_services
  end

  def blogs_detail
  end

  def nri_homes
  end

  def send_inquiry_mail
    puts "===> params: ", params
    name = params['name']
    email = params['email']
    mobile = params['number']

    Inquiry.create(
      name: params['name'],
      email: params['email'],
      mobile: params['number']
    )

    InquiryMailer.send_mail(
      name, email, mobile
    ).deliver_later

    head :ok
  end

  private
    def set_category
      @categories = Category.where(active: true).order(:priority)
    end
end
