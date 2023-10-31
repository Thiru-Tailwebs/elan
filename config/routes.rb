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
    get '/admin/dashboard' => 'admin/dashboard#index'
  end
end
