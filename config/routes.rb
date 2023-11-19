Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  root 'homes#index'

  get '/media' => 'homes#media'

  get '/our_collections' => 'products#index'
  get '/our_collections/:id', to: 'products#show', as: 'show_product'
  get '/blogs' => 'blogs#index'
  get '/blogs/:id', to: 'blogs#show', as: 'show_blog'

  get '/contact_us' => 'homes#contact_us'
  get '/our_story' => 'homes#our_story'
  get '/brands' => 'homes#brands'
  get '/clientele' => 'homes#clientele'
  get '/our_services' => 'homes#our_services'
  get '/book_services' => 'homes#book_services'
  get '/accessories' => 'product#accessories'
  get '/fabrics' => 'product#fabrics'




  devise_for :users
  get '/admin/dashboard' => 'admin/dashboard#index'

  # Admin sidebar manus
  namespace :admin do
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
        get '/sequencing', to: "categories#sequencing"
        post "/update_sequence", to: "categories#update_sequence"
      end
    end
    resources :header_images
    get '/admin/dashboard' => 'admin/dashboard#index'
  end
end
