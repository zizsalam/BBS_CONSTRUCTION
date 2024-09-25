Rails.application.routes.draw do
  devise_for :users
  # Static page route for "About" page
  get "about", to: "pages#about"

  get "home", to: "pages#home"

  # Dynamic routes for users, homes, and installment plans
  resources :users, only: [:index, :show]

  resources :homes do
    resources :installment_plans, only: [:new, :create, :index, :show]
  end
  root "homes#index"
end
