class SongsController < ApplicationController
    before_action :set_song, only: [ :destroy, :edit, :update]
  def index
   @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def destroy
    @song.destroy
    redirect_to songs_path(@song)
end

  def new
    @songs = current_user.songs.new
  end

  def create
    @song = current_user.songs.new(song_params)
    if @song.save
    redirect_to song_path(@song)

else
    render :new
    end

end


  def edit
  end

  def update
    if @song.update(song_params)
        redirect_to song_path(@song)
    else 
        render :edit
    end
end

def set_song
  @song = current_user.songs.find(params[:id])
  
end

def song_params
  params.require(:song).permit(:title, :artist, :genre)
end

end
