class Admin::ClienteleImagesController < Admin::AdminbaseController
  before_action :set_clientele_image, only: %i[ show edit update destroy ]

  # GET /admin/clientele_images or /admin/clientele_images.json
  def index
    @clientele_images = ClienteleImage.all
  end

  # GET /admin/clientele_images/1 or /admin/clientele_images/1.json
  def show
  end

  # GET /admin/clientele_images/new
  def new
    @clientele_image = ClienteleImage.new
  end

  # GET /admin/clientele_images/1/edit
  def edit
  end

  # POST /admin/clientele_images or /admin/clientele_images.json
  def create
    @clientele_image = ClienteleImage.new(clientele_image_params)

    respond_to do |format|
      if @clientele_image.save
        format.html { redirect_to admin_clientele_images_url, notice: "Clientele image was successfully created." }
        format.json { render :show, status: :created, location: @clientele_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clientele_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/clientele_images/1 or /admin/clientele_images/1.json
  def update
    respond_to do |format|
      if @clientele_image.update(clientele_image_params)
        format.html { redirect_to admin_clientele_images_url, notice: "Clientele image was successfully updated." }
        format.json { render :show, status: :ok, location: @clientele_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clientele_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/clientele_images/1 or /admin/clientele_images/1.json
  def destroy
    @clientele_image.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_clientele_images_url, notice: "Clientele image was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  def sequencing
    @clientele_image = ClienteleImage.where(active: true).order(:priority)
  end

  def update_sequence
    params[:item_ids].each_with_index do |item_id, index|
      ClienteleImage.find(item_id).update(priority: index + 1)
    end

    head :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientele_image
      @clientele_image = ClienteleImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clientele_image_params
      params.require(:clientele_image).permit(
        :active, :image
      )
    end
end
