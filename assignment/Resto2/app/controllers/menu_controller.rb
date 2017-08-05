class MenuController < ApplicationController
  def index
    @category = Category.all
  end
end
