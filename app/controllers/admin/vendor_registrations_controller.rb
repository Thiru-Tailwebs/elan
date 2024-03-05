class Admin::VendorRegistrationsController < Admin::AdminbaseController
  before_action :set_vendor_registration, only: %i[ destroy update_status ]

  def index
    @vendor_registrations = VendorRegistration.all.order('id DESC')
  end

  def destroy
    @vendor_registration.destroy
  end

  def update_status
    @vendor_registration.update(status: true)
  end

  private
    def set_vendor_registration
      @vendor_registration = VendorRegistration.find(params[:id])
    end

end
