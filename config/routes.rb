Rails.application.routes.draw do
  resources :genres, only:[:new,:show, :create, :update, :edit]
  resources :artists, only: [:new, :show, :index, :create, :update, :edit]
  resources :songs, only: [:index, :new, :show, :create, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
