class Admin::BookServicesController < Admin::AdminbaseController
  before_action :set_book_service, only: %i[ destroy update_status ]

  def index
    @book_services = BookService.all.order('id DESC')
  end

  def destroy
    @book_services.destroy
  end

  def update_status
    @book_services.update(status: true)
  end

  private
    def set_book_service
      @book_services = BookService.find(params[:id])
    end

end
