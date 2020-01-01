Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create] do
        resources :bicycles, only: [:index]
      end
      resources :trips, only: [:index, :show, :create, :update]
      resources :neighbourhoods, only: [:show, :index, :create] do
        resources :bicycles, only: [:index]
      end
      resources :countries, only: [:index, :create]
      resources :cities, only: [:index, :show, :create] do
        resources :bicycles, only: [:index]
        resources :neighbourhoods, only: [:index]
      end
      resources :bicycles, only: [:index, :show, :create, :update]
      post '/login', to: 'sessions#create'
      post '/signup', to: 'users#create'
      get '/get_current_user', to: 'sessions#get_current_user'
      delete '/logout', to: 'sessions#destroy'
    end
  end

end
