class Admin::BlogTypesController < Admin::AdminbaseController
  before_action :set_blog_type, only: %i[ show edit update destroy ]

  # GET /admin/blog_types or /admin/blog_types.json
  def index
    @blog_types = BlogType.all
  end

  # GET /admin/blog_types/1 or /admin/blog_types/1.json
  def show
  end

  # GET /admin/blog_types/new
  def new
    @blog_type = BlogType.new
  end

  # GET /admin/blog_types/1/edit
  def edit
  end

  # POST /admin/blog_types or /admin/blog_types.json
  def create
    @blog_type = BlogType.new(blog_type_params)

    respond_to do |format|
      if @blog_type.save
        format.html { redirect_to admin_blog_types_url, notice: "Blog type was successfully created." }
        format.json { render :show, status: :created, location: @blog_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/blog_types/1 or /admin/blog_types/1.json
  def update
    respond_to do |format|
      if @blog_type.update(blog_type_params)
        format.html { redirect_to admin_blog_types_url, notice: "Blog type was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blog_types/1 or /admin/blog_types/1.json
  def destroy
    @blog_type.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_blog_types_url, notice: "Blog type was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_type
      @blog_type = BlogType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_type_params
      params.require(:blog_type).permit(
        :name, :active,
      )
    end
end
