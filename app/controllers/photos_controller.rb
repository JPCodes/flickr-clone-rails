class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    p "no!!!!", current_user
    if params[:liked_photo]
      @photo = Photo.find_by_id(params[:liked_photo])
      @photo.liked_by current_user
    end
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    @tag = Tag.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photo_path(@photo)
    else
      render :edit
    end
  end

  def new
    @user = current_user
    @photo = Photo.new
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
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

  def likeable
    p "no!!!!"
    @photo = Photo.find_by_id(params[:photo_id])
    @photo.liked_by current_user
    redirect_to photos_path
  end

  private
  def photo_params
  params.require(:photo).permit(:image, :description, :user_id)
  end
end
