class ApplicationController < ActionController::Base
  # before_action :prepare_meta_tags, if: -> { request.get? }
  helper SocialShareButton::Helper

  # def prepare_meta_tags(options={})
  #   site_name   = "Elan"
  #   title       = "Elan Decor"
  #   description = "The "
  #   image       = options[:image] || "http://35.200.184.97:3002/images/home-page/elan-new-logo.png"
  #   current_url = request.url
  #   keywords    = "think-tanks in india, think-tanks in delhi, energy think-tank, climate think-tank, environment think-tank"

  #   defaults = {
  #     site:        title,
  #     description: description,
  #     author:      site_name,
  #     rating:      'General',
  #     city:        'Delhi',
  #     state:       'Delhi',
  #     keywords:    keywords,
  #     twitter: {
  #       site_name: site_name,
  #       site: '@cef_ceew',
  #       card: 'summary',
  #       description: description,
  #       image: image
  #     },
  #     og: {
  #       url: current_url,
  #       site_name: site_name,
  #       title: title,
  #       image: image,
  #       description: description,
  #       type: 'website'
  #     },
  #     distribution: 'global',
  #     noindex: false,
  #     googlebot: 'index,follow,all',
  #     canonical: current_url,
  #     'revisit-after'=> '7 days'
  #   }
  #   options.reverse_merge!(defaults)

  #   set_meta_tags options
  # end

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
