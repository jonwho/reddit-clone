Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index, :create, :update, :destroy] do
        collection do
          get 'search'
        end

        member do
        end
      end

      resources :comments, only: [:index, :create, :update, :destroy] do
        collection do
          get 'search'
        end

        member do
        end
      end
    end
  end
end
