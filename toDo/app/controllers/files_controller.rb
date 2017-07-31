class FilesController < ApplicationController

  def index
    @files = Dir["app/assets/*"]
  end

end
