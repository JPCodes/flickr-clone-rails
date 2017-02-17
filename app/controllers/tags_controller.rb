class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @matches = @tag.find_by_tag
  end

  def new
    @photo = Photo.find(params[:id])
    @tag = @photo.tags.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @tag = @photo.tags.new(tag_params)
    if @tag.save
      redirect_to photo_path(@photo)
    else
      flash[:notice] = 'Comment not saved'
      redirect_to photo_path(@photo)
    end
  end
  private
  def tag_params
    params.require(:tag).permit(:snippet, :photo_id)
  end
end
