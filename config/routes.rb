Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:new, :create, :show, :index, :edit, :update]
  resources :genres, only: [:new, :create, :show, :index, :edit, :update]
  resources :songs, only: [:new, :create, :show, :index, :edit, :update]
end
