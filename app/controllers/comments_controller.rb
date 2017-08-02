class CommentsController < ApplicationController
  def create
    @photo = Photo.find params[:photo_id] # This returns photo object with id
    @comment = @photo.comments.create(comment_params)
    
    if @comment.valid?
      redirect_to root_path, flash: {success: "Added comment."}
    else
      redirect_to root_path, flash: {error: "Cannot add comment"}
    end
    
  end
  
  def comment_params
    puts "PARAMS: #{params}"
    params.require(:comment).permit(:id, :photo_id, :body)
    
  end
end