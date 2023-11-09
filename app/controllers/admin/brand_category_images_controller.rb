class Admin::BrandCategoryImagesController < Admin::AdminbaseController
  before_action :set_brand_category_image, only: %i[ show edit update destroy ]
  before_action :set_category, only: [:index, :new, :edit, :sequencing]

  # GET /admin/brand_category_images or /admin/brand_category_images.json
  def index
    @brand_category_images = BrandCategoryImage.all.order(:brand_category_id)
  end

  # GET /admin/brand_category_images/1 or /admin/brand_category_images/1.json
  def show
  end

  # GET /admin/brand_category_images/new
  def new
    @brand_category_image = BrandCategoryImage.new
  end

  # GET /admin/brand_category_images/1/edit
  def edit
  end

  # POST /admin/brand_category_images or /admin/brand_category_images.json
  def create
    @brand_category_image = BrandCategoryImage.new
    @brand_category_image.update_associations(params['brand_category_image'])

    redirect_to admin_brand_category_images_url
  end

  # PATCH/PUT /admin/brand_category_images/1 or /admin/brand_category_images/1.json
  def update
    respond_to do |format|
      if @brand_category_image.update(brand_category_image_params)
        format.html { redirect_to admin_brand_category_images_path, notice: "Brand category image was successfully updated." }
        format.json { render :show, status: :ok, location: @brand_category_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand_category_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/brand_category_images/1 or /admin/brand_category_images/1.json
  def destroy
    @brand_category_image.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_brand_category_images_path, notice: "Brand category image was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  def update_sequence
    params[:item_ids].each_with_index do |item_id, index|
      BrandCategoryImage.find(item_id).update(priority: index + 1)
    end

    head :ok
  end

  def sequencing
    @brand_category_images = nil
    if params['category'].present?
      @brand_category_images = BrandCategoryImage.joins(:brand_category).where(
        :brand_categories => {:code => params['category']},
      ).order(:priority)
    end
  end

  private
    def set_category
      @brand_categories = BrandCategory.where(
        active: true
      )
    end

    def set_brand_category_image
      @brand_category_image = BrandCategoryImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brand_category_image_params
      params.require(:brand_category_image).permit(:brand_category_id)
    end
end
