class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def show
    # byebug
    @artist = Artist.find(params[:id])
    # @songs = Song.find_songs
  end
end
