class CommentsController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @photo = Photo.find(params[:id])
    @comment = @photo.comments.new
  end

  def create
    @user = User.find(current_user.id)
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.new(comment_params)
    if @comment.save
      redirect_to photo_path(@photo)
    else
      flash[:notice] = 'Comment not saved'
      redirect_to photo_path(@photo)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
