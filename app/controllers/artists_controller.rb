class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :update, :edit]
  before_action :artist_params, only: [:create, :update]

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit; end

  def show; end

  def new
    @artist = Artist.new
  end

  private

  def get_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit!
  end

end
