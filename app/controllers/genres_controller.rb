class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit]

  def new
   @genre = Genre.new
  end

  def show

  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit

  end

  def update
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end
  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
