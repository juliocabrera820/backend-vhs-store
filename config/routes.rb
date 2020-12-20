Rails.application.routes.draw do
  concern :rentable do
    resources :rentals
  end
  concern :generable do
    resources :movie_genres
  end
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :clients, concerns: :rentable
      resources :vhs, concerns: :rentable
      resources :movies, concerns: :generable do
        resources :vhs
      end
      resources :genre, concerns: :generable
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
