class MerchantsController < ApplicationController
  def index
    @merchants = CommerceFacade.new.merchants
  end
end
