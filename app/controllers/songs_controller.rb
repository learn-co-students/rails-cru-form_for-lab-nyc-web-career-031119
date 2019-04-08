class SongsController < ApplicationController
# before_action :get_song, only: [:edit]
# before_action :get_params, only: [:edit, :update, :create]
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist.id)
    @genre = Genre.find(@song.genre.id)
    # byebug
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist.id)
    @genre = Genre.find(@song.genre.id)
  end

  def update
  end

  def create
    # byebug
    # @song = Song.find(params[:id])
    @artist = Artist.find_or_create_by(name: params[:song][:artist_name])
    @genre = Genre.find_or_create_by(name: params[:song][:genre_name])
    @song = Song.create(name: params[:song][:name], artist_id: @artist.id, genre_id: @genre.id)
    redirect_to song_path(@song)
    # byebug

    private

    def get_song
      @song = Song.find(params[:id])
    end

    def get_params
      params.require(:song).permit(:name, :artist_id, :genre_id)

    end
  end
end
