Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
  resources :movie_theaters, only: [:index, :new, :create, :show] do
    resources :rooms, only: [:new, :create]
  end

  resources :movies, only: [:index, :new, :create]

  scope '/api/v1' do
    get 'detalhes', to: 'movie_theaters#details', as: 'movie_details'
  end
end
