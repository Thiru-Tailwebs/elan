class ApplicationController < ActionController::Base
  include MetaTagsConcern
  helper SocialShareButton::Helper

  before_action :prepare_meta_tags, if: -> { request.get? }

  protected

  def after_sign_in_path_for(resource)
    # puts "====> resource.role.code: ", resource.role.code
    if resource.class == User && resource.role.code == "main_admin"
      admin_categories_path
    else
      super
    end
  end
end
