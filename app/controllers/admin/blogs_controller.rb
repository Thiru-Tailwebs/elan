class Admin::BlogsController < Admin::AdminbaseController
  before_action :set_blog, only: %i[ show edit update destroy publish ]
  before_action :set_dropdown_data, only: [:new, :edit]

  # GET /admin/blogs or /admin/blogs.json
  def index
    @blogs = Blog.all
  end

  # GET /admin/blogs/1 or /admin/blogs/1.json
  def show
  end

  # GET /admin/blogs/new
  def new
    @blog = Blog.new
  end

  # GET /admin/blogs/1/edit
  def edit
  end

  # POST /admin/blogs or /admin/blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        @blog.update_associations(params["blog"])
        format.html { redirect_to admin_blogs_url, notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/blogs/1 or /admin/blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        @blog.update_associations(params["blog"])
        format.html { redirect_to admin_blogs_url, notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/blogs/1 or /admin/blogs/1.json
  def destroy
    @blog.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_blogs_url, notice: "Blog was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  def publish
    @blog.record_publish
  
    redirect_to admin_blogs_url
  end

  private

    def set_dropdown_data
      @blog_types = BlogType.where(active: true)
      @authors = Author.where(active: true)
    end

    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(
        :title, :name, :description1, :description2, :image, :author_id
      )
    end
end
