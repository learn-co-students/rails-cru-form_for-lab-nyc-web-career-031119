class GenresController < ApplicationController
  before_action :call_genre, only: [:show, :edit, :update]

  def index
    @genres = Genre.all
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to @genre
  end

  def edit
  end

  def update
    @genre.update(genre_params(:name))
    redirect_to @genre
  end

  private

  def call_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
