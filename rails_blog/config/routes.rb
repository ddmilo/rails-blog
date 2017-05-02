Rails.application.routes.draw do
  devise_for :users, controllers: {
       sessions: 'users/sessions'
     }

  get 'posts/index'

  get 'posts/show'

  get 'posts/create'


  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
