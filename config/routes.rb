PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  resources :posts, except: [:destroy]
  resources :categories, only: [:new, :create]
  resources :posts do
  resources :comments, only: [:create]
  end  
end