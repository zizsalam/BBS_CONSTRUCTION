Rails.application.routes.draw do
  # Devise routes
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/services', to: 'pages#services'


  # Articles
  resources :articles

  # Users (restricted to :index, :show, :edit, :update)
  resources :users, only: [:index, :show, :edit, :update]

  # Consultations
  resources :consultations, only: [:new, :create]

  # Messages
  resources :messages, only: [:index, :show, :new, :create]

  # Nested resources for homes and installment plans
  resources :homes do
    resources :installment_plans, only: [:new, :create, :index, :show]
  end

  # TinyMCE
  post '/tinymce_assets', to: 'tinymce_assets#create'

  # Root route
  root to: 'pages#home'
end
