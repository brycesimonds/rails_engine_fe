class MerchantsController < ApplicationController
  def index
    @merchants = MerchantDBFacade.merchants 
  end

  def show
    @merchant = MerchantDBFacade.single_merchant(params[:id])
  end
end