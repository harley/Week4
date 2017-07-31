class FilesController < ApplicationController

  def index
    @files = Dir["*"]
  end



end
