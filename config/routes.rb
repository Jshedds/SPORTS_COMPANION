Rails.application.routes.draw do
  get 'equipment_needs/new'
  get 'equipment_needs/create'
  devise_for :users
  root to: "sports#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :sports do
    resources :favourites, only: %i[create destroy]
    resources :equipment_needs, only: %i[create update]
    resources :histories, only: %i[create update]
    resources :overviews, only: %i[create update]
    resources :rules, only: %i[create update]
    resources :terminologies, only: %i[create update]
    get "chatroom", to: "chatrooms#show", as: "chatroom"
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
    resources :positions, only: %i[index show create update] do
      resources :descriptions, only: %i[create update]
      resources :famous_players, only: %i[create update]
    end
  end
  # Defines the root path route ("/")
  # root "posts#index"
  get "dashboard", to: "users#show", as: "dashboard"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sports, only: [:index, :show, :update, :create, :destroy]
    end
  end
end
