class GenresController < ApplicationController
  before_action :this_genre, only: [:show, :edit, :update]

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to @genre
  end

  def show

  end

  def edit
  end

  def update
    @genre = Genre.update(genre_params)
    redirect_to @genre
  end

  private

  def this_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

end
