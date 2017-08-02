class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)

    if @photo.valid?
      flash[:success] = "Photo posted."
    else
      flash[:error] = "Error: #{@photo.errors.full_messages.to_sentence}"
    end

    redirect_to root_path
  end

  def photo_params
    params.require(:photo).permit(:username, :url)
  end
end
