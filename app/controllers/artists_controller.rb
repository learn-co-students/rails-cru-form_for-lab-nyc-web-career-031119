class ArtistsController < ApplicationController
  before_action :find_artist, only: [:edit, :show, :update]


  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end


  def show
  end

  def edit
  end


  def create
    @artist= Artist.new(artist_params)
    @artist.save

    redirect_to artist_path(@artist)
  end


  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end


  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio) #only the things you want to allow to change
    #require: i am looking for parameters with the key of artist
  end

end
