Rails.application.routes.draw do
  get "consultations/new"
  get "consultations/create"
  devise_for :users

  # Static pages
  get "about", to: "pages#about"
  get "home", to: "pages#home"
  get "services", to: "pages#services"

  # Articles (restricted to :index and :show)
  resources :articles, only: [:index, :show]

  resources :consultations, only: [:new, :create]

  # Users (restricted to :show, :edit, :update)
  resources :users, only: [:show, :edit, :update]

  # Messages
  resources :messages, only: [:index, :show, :new, :create]

  # Nested resources for homes and installment plans
  resources :homes do
    resources :installment_plans, only: [:new, :create, :index, :show]
  end

  # Root route
  root to: "pages#home"
end
