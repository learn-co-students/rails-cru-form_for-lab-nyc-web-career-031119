class GenresController < ApplicationController
  before_action :get_genre, only: [:show, :update, :edit]
  before_action :genre_params, only: [:create, :update]

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def show; end
  def edit; end

  def new
    @genre = Genre.new
  end

  private

  def get_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit!
  end
end
