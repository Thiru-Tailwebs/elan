class Admin::DesignServicesController < Admin::AdminbaseController
  before_action :set_design_service, only: %i[ destroy update_status ]

  # GET /admin/design_services or /admin/design_services.json
  def index
    @design_services = DesignService.all.order('id DESC')
  end

  def destroy
    @design_service.destroy
  end

  def update_status
    @design_service.update(status: true)
  end

  private
    def set_design_service
      @design_service = DesignService.find(params[:id])
    end

end
