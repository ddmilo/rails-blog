Rails.application.routes.draw do
  get 'user_controller/index'

  get 'user_controller/edit'

  get 'user_controller/show'

  get 'home_page/index'

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  post '/posts/new' => "posts#create", :as => :post

  devise_for :users

  root 'home_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
