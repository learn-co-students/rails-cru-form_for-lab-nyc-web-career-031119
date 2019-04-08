class ArtistsController < ApplicationController
  before_action :call_artist, only: [:show, :edit, :update]

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
    redirect_to @artist
  end

  def edit
  end

  def update
    @artist.update(artist_params(:name))
    redirect_to @artist
  end

  private

  def call_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
