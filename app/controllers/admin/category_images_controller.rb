class Admin::CategoryImagesController < Admin::AdminbaseController
  before_action :set_category_image, only: %i[ show edit update destroy ]
  before_action :set_category, only: [:index, :new, :edit, :sequencing]

  # GET /admin/category_images or /admin/category_images.json
  def index
    @category_images = CategoryImage.all.order(:category_id)
  end

  # GET /admin/category_images/1 or /admin/category_images/1.json
  def show
  end

  # GET /admin/category_images/new
  def new
    @category_image = CategoryImage.new
  end

  # GET /admin/category_images/1/edit
  def edit
  end

  # POST /admin/category_images or /admin/category_images.json
  def create
    @category_image = CategoryImage.new
    @category_image.update_associations(params['category_image'])

    redirect_to admin_category_images_url
  end

  # PATCH/PUT /admin/category_images/1 or /admin/category_images/1.json
  def update
    respond_to do |format|
      if @category_image.update(category_image_params)
        format.html { redirect_to admin_category_images_url, notice: "Category image was successfully updated." }
        format.json { render :show, status: :ok, location: @category_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/category_images/1 or /admin/category_images/1.json
  def destroy
    @category_image.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_category_images_url, notice: "Category image was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  def update_sequence
    params[:item_ids].each_with_index do |item_id, index|
      CategoryImage.find(item_id).update(priority: index + 1)
    end

    head :ok
  end

  def sequencing
    @category_images = nil
    if params['category'].present?
      @category_images = CategoryImage.joins(:category).where(
        :categories => {:code => params['category']},
      ).order(:priority)
    end
  end

  private
    def set_category
      @categories = Category.where(
        active: true
      )
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_category_image
      @category_image = CategoryImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_image_params
      params.require(:category_image).permit(:category_id)
    end
end
