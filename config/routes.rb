Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'dashboards#show', as: :dashboard
  resources :food_trucks, only: [:show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  get '/search', to: "food_trucks#search", as: :ft_search

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

