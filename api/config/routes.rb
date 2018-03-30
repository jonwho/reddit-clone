Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    get 'ping' => 'health#ping'

    resources :users, only: [:create]

    post 'authenticate' => 'authentication#authenticate'
  end
end
