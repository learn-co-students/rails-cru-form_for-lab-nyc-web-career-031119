class ArtistsController < ApplicationController

  def index
    @all = Artist.all
  end

  def new
    @new = Artist.new
  end

  def create
    @new = Artist.create(params.require(:artist).permit(:name,:bio))
    redirect_to artist_path(@new)
  end

  def update
    @instance.update(params.require(:artist).permit(:name,:bio))
    redirect_to artist_path(@instance)
  end

  private

  def get_instance
    @instance = Artist.find(params[:id])
  end
end
