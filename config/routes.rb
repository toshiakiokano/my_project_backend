Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api, { format: 'json' } do
    namespace :v1 do
      namespace :users do
        resources :registrations, only: [:create]
        resources :confirmations, only: [:create]
        resources :sessions, only: [:create, :destroy]
      end

      post 'token', to: 'token#get_csrf_token', as: :get_csrf_token
    end
  end
end
