Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'homes#index'
  get 'homes/index'
  get '/brands' => 'homes#brands'
  get '/contact_us' => 'homes#contact_us'
  get '/blogs' => 'homes#blogs'
  get '/accessories' => 'homes#accessories'
  get '/wall-covering' => 'homes#wall-covering'
  get '/furnitures' => 'homes#furnitures'
  get '/floor-covering' => 'homes#floor-covering'
  get '/fabrics' => 'homes#fabrics'
  get '/trims' => 'homes#trims'


  devise_for :users
  get '/admin/dashboard' => 'admin/dashboard#index'

  # Admin sidebar manus
  namespace :admin do
    get '/admin/dashboard' => 'admin/dashboard#index'
  end
end
