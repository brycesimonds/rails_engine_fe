class MerchantDBFacade
  def self.merchants
    parsed_json = MerchantDBService.merchants
    
    parsed_json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.single_merchant(merchant_id)
    merchant = MerchantDBService.get_merchant(merchant_id)[:data]
    Merchant.new(merchant)
  end
end 