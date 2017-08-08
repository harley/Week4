class LineItemsController < ApplicationController
  def create
    @lineitem = LineItem.new(line_item_params)
    if @lineitem.save
      redirect_to cart_path(@lineitem.cart_id)
    else
      redirect_to :back 
    end
  end

  def line_item_params
    params.require(:line_item).permit(:item_id, :cart_id, :quantity)
  end

end
