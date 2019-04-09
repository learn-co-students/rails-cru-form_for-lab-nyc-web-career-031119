class ArtistsController < ApplicationController
  before_action :this_artist, only: [:show, :edit, :update]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def show

  end

  def edit
  end

  def update
    @artist = Artist.update(artist_params)
    redirect_to @artist
  end

  private

  def this_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
