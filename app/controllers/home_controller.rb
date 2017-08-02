class HomeController < ApplicationController
  def index
    @photos = Photo.order("updated_at DESC")
  end
end
