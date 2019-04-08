class SongsController < ApplicationController
  def index
    @all = Song.all
  end

  def new
    @new = Song.new
  end

  def create
    @new = Song.create(params.require(:song).permit(:name,:artist_id,:genre_id))
    redirect_to song_path(@new)
  end

  def update
    @instance.update(params.require(:song).permit(:name,:aritst_id,:genre_id))
    redirect_to song_path(@instance)
  end

  def genre
    get_instance
    @genre = Genre.find(@instance.genre_id)
  end

  private

  def get_instance
    @instance = Song.find(params[:id])
  end

end
