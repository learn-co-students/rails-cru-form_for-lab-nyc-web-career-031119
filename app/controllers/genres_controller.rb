class GenresController < ApplicationController
before_action :get_genre, only: [:edit, :show]
before_action :genre_params, only: [:create, :update]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    # byebug
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
  end

  def update
    @new_update = Genre.update(params[:id], {:name => params[:genre][:name]})
    redirect_to genre_path(@new_update)
  end

  def show
    # @genre = Genre.all.find(params[:id])
    @related_songs = Song.find_by(genre_id: @genre.id)
    # byebug
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def get_genre
    @genre = Genre.find(params[:id])
  end

end
