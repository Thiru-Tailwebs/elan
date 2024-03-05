class Admin::ContactsController < Admin::AdminbaseController
  before_action :set_contact, only: %i[ show edit update destroy update_status ]

  # GET /admin/contacts or /admin/contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /admin/contacts/1 or /admin/contacts/1.json
  def show
  end

  # GET /admin/contacts/new
  def new
    @contact = Contact.new
  end

  # GET /admin/contacts/1/edit
  def edit
  end

  # POST /admin/contacts or /admin/contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to admin_contacts_url, notice: "Contact was successfully created." }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/contacts/1 or /admin/contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to admin_contacts_url, notice: "Contact was successfully updated." }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contacts/1 or /admin/contacts/1.json
  def destroy
    @contact.destroy

    # respond_to do |format|
    #   format.html { redirect_to admin_contacts_url, notice: "Contact was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  def update_status
    @contact.update(status: true)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(
        :first_name, :last_name, :email, :mobile, :message, :active
      )
    end
end
