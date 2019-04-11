class ArtistsController < ApplicationController
  before_action :get_artist, only:[:show,:update,:edit]
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit

  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private
  def get_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name,:bio)
  end
end
