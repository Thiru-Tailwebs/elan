class Admin::InquiriesController < Admin::AdminbaseController
  before_action :set_inquiry, only: %i[ destroy update_status ]

  def index
    @inquiries = Inquiry.all.order('id DESC')
  end

  def destroy
    @inquiry.destroy
  end

  def update_status
    @inquiry.update(status: true)
  end

  private
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

end
