class SongsController < ApplicationController
  before_action :call_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:song))
    @song.save
    redirect_to @song
  end

  def edit
  end

  def update
    @song.update(song_params(:song))
    redirect_to @song
  end

  private

  def call_song
    @song = Song.find(params[:id])
  end

  def song_params(song)
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
