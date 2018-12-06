Rails.application.routes.draw do
  devise_for :users
  resources :cards do
    member do
      patch :move
    end
  end
  resources :lists do
    member do
      patch :move
    end
  end
  
  namespace :api do
    namespace :app do
      namespace :v1 do
        post 'login', to: 'mobile#login'
      end
    end
  end


  root to: 'lists#index'
end
