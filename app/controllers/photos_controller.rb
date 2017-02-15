class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
  end

  def new
    @user = current_user
    @photo = Photo.new
  end

  def create
    @user = current_user
    @photo = @user.photos.new(photo_params)
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end


  private
  def photo_params
  params.require(:photo).permit(:image, :description, :user_id)
  end
end
