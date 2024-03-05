Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'homes#index'

  get '/media' => 'homes#media'

  get '/nri-homes' => 'homes#nri_homes'

  get '/our-collections' => 'products#index'
  get '/our-collections/:id', to: 'products#show', as: 'show_product'
  get '/blogs' => 'blogs#index'
  get '/blogs/:id', to: 'blogs#show', as: 'show_blog'

  get '/contact-us' => 'homes#contact_us'
  get '/vendor-registration' => 'homes#vendor_registration'
  get '/faq' => 'homes#faq'
  get '/home-design-service' => 'homes#home_design_service'
  get '/our-story' => 'homes#our_story'
  get '/brands' => 'homes#brands'
  get '/clientele' => 'homes#clientele'
  get '/our-services' => 'homes#our_services'
  get '/book-services' => 'homes#book_services'
  get '/accessories' => 'product#accessories'
  get '/fabrics' => 'product#fabrics'
  post "/send-inquiry-mail", to: "homes#send_inquiry_mail"
  post "/send-contact-mail", to: "homes#send_contact_mail"
  post "/send-book-service-mail", to: "homes#send_book_service_mail"
  post "/send-newsletter-mail", to: "homes#send_newsletter_mail"
  post "/send-design-service-mail", to: "homes#send_design_service_mail"
  post "/send-vendor-registration-mail", to: "homes#send_vendor_registration_mail"

  devise_for :users
  # get '/admin/dashboard' => 'admin/dashboard#index'
  get '/admin' => 'admin/categories#index'

  # Admin sidebar manus
  namespace :admin do
    resources :vendor_registrations do
      collection do
        get '/update_status', to: "vendor_registrations#update_status"
      end
    end
    resources :design_services do
      collection do
        get '/update_status', to: "design_services#update_status"
      end
    end
    resources :contacts do
      collection do
        get '/update_status', to: "contacts#update_status"
      end
    end
    resources :inquiries do
      collection do
        get '/update_status', to: "inquiries#update_status"
      end
    end
    resources :book_services do
      collection do
        get '/update_status', to: "book_services#update_status"
      end
    end
    resources :newsletters do
      collection do
        get '/update_status', to: "newsletters#update_status"
      end
    end
    post '/summernote/upload_image', to: 'summernote_images#upload_image'
    resources :clientele_images do
      collection do
        get '/sequencing', to: "clientele_images#sequencing"
        post "/update_sequence", to: "clientele_images#update_sequence"
      end
    end
    resources :blogs do 
      member do 
        put 'publish'
      end
    end
    resources :blog_types
    resources :authors
    resources :brand_category_images do
      collection do
        get '/sequencing', to: "brand_category_images#sequencing"
        post "/update_sequence", to: "brand_category_images#update_sequence"
      end
    end
    resources :brand_categories do
      collection do
        post "/edit_brand_category_images", to: "brand_categories#edit_brand_category_images"
        get '/sequencing', to: "brand_categories#sequencing"
        post "/update_sequence", to: "brand_categories#update_sequence"
      end
    end
    resources :category_images do
      collection do
        get '/sequencing', to: "category_images#sequencing"
        post "/update_sequence", to: "category_images#update_sequence"
      end
    end
    resources :categories do
      collection do
        post "/edit_category_images", to: "categories#edit_category_images"
        get '/sequencing', to: "categories#sequencing"
        post "/update_sequence", to: "categories#update_sequence"
      end
    end
    resources :header_images
    get '/admin/dashboard' => 'admin/dashboard#index'
  end
end
