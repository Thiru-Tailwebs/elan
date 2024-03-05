class Admin::BrandCategoriesController < Admin::AdminbaseController
  before_action :set_category, only: %i[ show edit update destroy ]

  # GET /admin/brand_categories or /admin/brand_categories.json
  def index
    @brand_categories = BrandCategory.all.order(:priority)
  end

  # GET /admin/brand_categories/1 or /admin/brand_categories/1.json
  def show
  end

  # GET /admin/brand_categories/new
  def new
    @brand_category = BrandCategory.new
  end

  # GET /admin/brand_categories/1/edit
  def edit
  end

  # POST /admin/brand_categories or /admin/brand_categories.json
  def create
    @brand_category = BrandCategory.new(category_params)

    respond_to do |format|
      if @brand_category.save
        format.html { redirect_to admin_brand_categories_url, notice: "Category was successfully created." }
        format.json { render :show, status: :created, location: @brand_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/brand_categories/1 or /admin/brand_categories/1.json
  def update
    respond_to do |format|
      if @brand_category.update(category_params)
        format.html { redirect_to admin_brand_categories_url, notice: "Category was successfully updated." }
        format.json { render :show, status: :ok, location: @brand_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/brand_categories/1 or /admin/brand_categories/1.json
  def destroy
    @brand_category.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_brand_categories_url, notice: "Category was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  def sequencing
    @brand_categories = BrandCategory.where(active: true).order(:priority)
  end

  def update_sequence
    params[:item_ids].each_with_index do |item_id, index|
      BrandCategory.find(item_id).update(priority: index + 1)
    end

    head :ok
  end

  def edit_brand_category_images
    session[:brand_category_id] = params['recordId']

    respond_to do |format|
      format.json { render json: { status: 'success', category_id: params['recordId'] } }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @brand_category = BrandCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:brand_category).permit(
        :name, :active,
        category_images_attributes: [:id, :image]
      )
    end
end
