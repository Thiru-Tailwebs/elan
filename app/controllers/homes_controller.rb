class HomesController < ApplicationController
  before_action :set_category, only: %i[
    index media
  ]

  def index
    @banner_image = HeaderImage.where(active: true).last
    @category_tab1 = CategoryImage.joins(:category).where(
      :categories => {:code => @categories[0].code}
    ).order(:priority)
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
  end

  def clientele
  end

  def our_services
  end

  def book_services
  end

  def blogs_detail
  end

  private
    def set_category
      @categories = Category.where(active: true).order(:priority)
    end
end
