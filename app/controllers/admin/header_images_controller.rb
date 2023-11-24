class Admin::HeaderImagesController < Admin::AdminbaseController
  before_action :set_header_image, only: %i[ show edit update destroy ]

  # GET /admin/header_images or /admin/header_images.json
  def index
    @header_images = HeaderImage.all
  end

  # GET /admin/header_images/1 or /admin/header_images/1.json
  def show
  end

  # GET /admin/header_images/new
  def new
    @header_image = HeaderImage.new
  end

  # GET /admin/header_images/1/edit
  def edit
  end

  # POST /admin/header_images or /admin/header_images.json
  def create
    @header_image = HeaderImage.new(header_image_params)

    respond_to do |format|
      if @header_image.save
        format.html { redirect_to admin_header_images_url, notice: "Header image was successfully created." }
        format.json { render :show, status: :created, location: @header_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @header_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/header_images/1 or /admin/header_images/1.json
  def update
    respond_to do |format|
      if @header_image.update(header_image_params)
        format.html { redirect_to admin_header_images_url, notice: "Header image was successfully updated." }
        format.json { render :show, status: :ok, location: @header_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @header_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/header_images/1 or /admin/header_images/1.json
  def destroy
    @header_image.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_header_images_url, notice: "Header image was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_header_image
      @header_image = HeaderImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def header_image_params
      params.require(:header_image).permit(:name, :description, :image, :square_image, :active)
    end
end
