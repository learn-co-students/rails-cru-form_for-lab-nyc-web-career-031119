class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    # @artist = Artist.find(params[song][:artist_name])
    # @genre = Genre.find(params[song][:song_name])
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))

    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))

    redirect_to song_path(@song)
  end
end
