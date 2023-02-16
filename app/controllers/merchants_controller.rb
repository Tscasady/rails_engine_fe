class MerchantsController < ApplicationController
  def index
    @merchants = CommerceFacade.new.merchants
  end

  def show
    @merchant = CommerceFacade.new.merchant(params[:id])
    @items = CommerceFacade.new.merchant_items(params[:id])
  end
end
