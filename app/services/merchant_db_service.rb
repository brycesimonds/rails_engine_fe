class MerchantDBService
  def self.merchants
    response = conn.get("http://localhost:3000/api/v1/merchants")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant(merchant_id)
    response = conn.get("http://localhost:3000/api/v1/merchants/#{merchant_id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(
      url: 'http://localhost:3000/api/v1',
      params: {param: '1'},
      headers: {'Content-Type' => 'application/json'}
    )
  end

  
end 