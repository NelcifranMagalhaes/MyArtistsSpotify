Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :artists,only: [:index]
    end
  end
  root to: 'api/v1/artists#index'
end

