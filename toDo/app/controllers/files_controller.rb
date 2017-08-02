class FilesController < ApplicationController

  def index
    @files = Dir["app/assets/List/*.md"]
    @files.each do |file|
      

  end

end
