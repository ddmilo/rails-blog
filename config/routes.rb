Rails.application.routes.draw do


  resources :posts

  resources :user_controller



  get 'home_page/index'



  devise_for :users

  root 'home_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
