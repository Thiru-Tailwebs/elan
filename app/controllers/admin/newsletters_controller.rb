class Admin::NewslettersController < Admin::AdminbaseController
  before_action :set_newsletter, only: %i[ destroy update_status ]

  def index
    @newsletters = Newsletter.all
  end

  def destroy
    @newsletter.destroy
  end

  def update_status
    @newsletter.update(active: false)
  end

  private
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

end
