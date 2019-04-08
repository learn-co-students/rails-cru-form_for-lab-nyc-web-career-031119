Rails.application.routes.draw do
  resources :artists, except: :delete
  resources :genres, except: :delete
  resources :songs, except: :delete
end
