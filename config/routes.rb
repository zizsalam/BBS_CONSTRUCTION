Rails.application.routes.draw do
  resources :articles
  get "about", to: "pages#about"
  get "home", to: "pages#home"
  get "services", to: "pages#services"
  devise_for :users

  resources :users, only: [:show, :edit, :update]
  resources :articles, only: [:index, :show]

  # Add this line for messages routes
  resources :messages, only: [:index, :show, :new, :create]



  root to: "pages#home"



  resources :homes do
    resources :installment_plans, only: [:new, :create, :index, :show]
  end
end
