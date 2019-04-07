class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end

  def new
    @song = Song.new
    @aid_begin = Artist.first.id
    @aid_end = Artist.last.id
    @gid_begin = Genre.first.id
    @gid_end = Genre.last.id
    render :form
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
    @aid_begin = Artist.first.id
    @aid_end = Artist.last.id
    @gid_begin = Genre.first.id
    @gid_end = Genre.last.id
    render :form
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
