Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'homes#index'
  get 'homes/index'

  get '/media' => 'homes#media'
  get '/contact_us' => 'homes#contact_us'
  get '/blogs' => 'homes#blogs'
  get '/our_collections' => 'homes#our_collections'
  get '/our_story' => 'homes#our_story'
  get '/brands' => 'homes#brands'
  get '/clientele' => 'homes#clientele'
  get '/our_services' => 'homes#our_services'
  get '/book_services' => 'homes#book_services'
  get '/blogs_detail' => 'homes#blogs_detail'

  get '/accessories' => 'product#accessories'
  get '/fabrics' => 'product#fabrics'


  devise_for :users
  get '/admin/dashboard' => 'admin/dashboard#index'

  # Admin sidebar manus
  namespace :admin do
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
