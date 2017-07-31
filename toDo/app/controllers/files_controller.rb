class FilesController < ApplicationController

  def index
    @files = Dir["app/assets/List/*.md"]
  end

end
