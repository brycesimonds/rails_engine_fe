class MerchantDBFacade
  def self.merchants
    parsed_json = MerchantDBService.merchants
    
    parsed_json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end 