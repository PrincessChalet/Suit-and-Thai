Rails.application.routes.draw do
  #devise_for :admins
  devise_for :users
  resources :managers
  resources :orders
  resources :customers
  resources :menus
  resources :kitchen_staffs
  resources :waitstaffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "managers#index"
  get 'pages/appetizers'
  get 'pages/Game1'
  get 'pages/Game2'
  get 'pages/Game3'
  get 'pages/ManagerOptions'
  
  devise_for :admins do
    get '/admins/sign_out' => 'admins/sessions#destroy'
  end

end
