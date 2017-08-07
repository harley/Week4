class MenuController < ApplicationController
  def index
    @sections = Section.all
    if params[:section]
      @section = Section.find_by(name:params[:section])
      @items = @section.items
    end
  end
end
