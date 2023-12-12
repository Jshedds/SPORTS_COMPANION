Rails.application.routes.draw do
  get 'favourite_positions/create'
  get 'favourite_positions/destroy'
  get 'equipment_needs/new'
  get 'equipment_needs/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :athletes do
    collection do
      get :find_or_create
    end
  end
  resources :sports do
    resources :favourites, only: %i[create]
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

  resources :favourites, only: %i[destroy]

  resources :positions, only: [] do
    resources :favourite_positions, only: %i[create]
  end

  resources :favourite_positions, only: %i[destroy]

  # Defines the root path route ("/")
  # root "posts#index"
  get "dashboard", to: "users#show", as: "dashboard"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sports, only: [:index, :show, :update, :create, :destroy]
    end
  end
end
