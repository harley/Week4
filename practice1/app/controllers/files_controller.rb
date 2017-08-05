class FilesController < ApplicationController


  def index
    if params[:next]
      path = params[:next] + "/*"
      @files = Dir[path]

      @parent = path.split("/")[0..-3].join("/")
    else
      @files = Dir["*"]
  end
end
