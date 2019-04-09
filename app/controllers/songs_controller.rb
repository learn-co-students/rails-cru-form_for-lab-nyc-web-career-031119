class SongsController < ApplicationController
  before_action :this_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to @song
  end

  def show
    @genre = @song.genre
    @artist = @song.artist
  end

  def edit
  end

  def update
    @song = Song.update(song_params)
    redirect_to @song
  end

  private

  def this_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
