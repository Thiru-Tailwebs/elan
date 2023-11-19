class Admin::InquiriesController < Admin::AdminbaseController
  def index
    @inquiries = Inquiry.all
  end
end
