class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit]

 def index
   @songs = Song.all
 end

  def new
   @song = Song.new
  end

  def show

  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
