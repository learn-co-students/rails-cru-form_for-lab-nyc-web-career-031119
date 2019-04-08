Rails.application.routes.draw do
  # get 'songs/index'
  #
  # get 'songs/show'
  #
  # get 'songs/new'
  #
  # get 'songs/edit'
  #
  # get 'genres/index'
  #
  # get 'genres/show'
  #
  # get 'genres/new'
  #
  # get 'genres/edit'
  #
  # get 'artists/index'
  #
  # get 'artists/show'
  #
  # get 'artists/new'
  #
  # get 'artists/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :artists
resources :genres
resources :songs

end
