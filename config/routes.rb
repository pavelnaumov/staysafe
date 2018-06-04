Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "user#index"
  resources :users do
    resources :hazard_notifications, only: :index
    resources :friend_requests, except: :show
    resources :frienships, except: :show
    resources :hazards, only: :index
    resources :current_locations, only: [:new, :create, :destroy]
  end

  namespace :admin do
    resources :hazards, only: [:new, :create, :update]
  end

end
