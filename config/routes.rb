Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  resources :users
   resources :products
   resources :contacts, only: [:new, :create]
  
  root 'static_pages#landing_page'
  get 'static_pages/about'


  resources :orders, only: [:index, :show, :create, :destroy]
   get '*path' => redirect('/')


end
