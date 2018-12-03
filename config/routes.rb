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
  
  root to: 'lists#index'
end
