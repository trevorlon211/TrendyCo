Rails.application.routes.draw do
  devise_for :users,
             :controllers => { :registrations => "user_registrations" }

  

  resources :products do
     resources :comments
   end

   resources :posts



   resources :contacts, only: [:new, :create]

   root 'static_pages#landing_page'
   get 'static_pages/about'
   get 'static_pages/landing_page'


   resources :orders, only: [:index, :show, :create, :destroy]



end
