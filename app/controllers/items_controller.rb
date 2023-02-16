class ItemsController < ApplicationController
  def index
    @items = CommerceFacade.new.items
  end

  def show 
    @item = CommerceFacade.new.item(params[:id])
  end
end
