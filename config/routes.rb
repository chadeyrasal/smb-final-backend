Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create] do
        resources :bicycles, only: [:index]
      end
      resources :trips, only: [:index, :show, :create, :update]
      resources :neighbourhoods, only: [:show, :create] do
        resources :bicycles, only: [:index]
      end
      resources :countries, only: [:create]
      resources :cities, only: [:index, :show, :create] do
        resources :bicycles, only: [:index]
        resources :neighbourhoods, only: [:index]
      end
      resources :bicycles, only: [:show, :create, :update]
    end
  end

end
