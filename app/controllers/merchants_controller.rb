class MerchantsController < ApplicationController
  def index
    @merchants = MerchantDBFacade.merchants 
  end
end