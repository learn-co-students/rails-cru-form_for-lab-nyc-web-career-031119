class GenresController < ApplicationController

  def index
    @all = Genre.all
  end

  def new
    @new = Genre.new
  end

  def create
    @new = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@new)
  end

  def update
    @instance.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@instance)
  end

  private

  def get_instance
    @instance = Genre.find(params[:id])
  end
end
