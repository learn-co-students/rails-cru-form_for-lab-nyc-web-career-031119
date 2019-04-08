class SongsController < ApplicationController
  before_action :get_song, only: [:show, :update, :edit]
  before_action :song_params, only: [:create, :update]

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def show
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def edit; end

  private

  def get_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit!
  end
end
