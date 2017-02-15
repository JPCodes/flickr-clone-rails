class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @user = current_user
    @photo = @user.photos.new
  end

  def create
    @user = current_user
    @photo = @user.photos.new(photos_params)
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new_user_photo
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private
  def photos_params
  params.require(:photo).permit(:image, :user_id)
  end
end
