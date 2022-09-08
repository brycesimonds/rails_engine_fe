require 'rails_helper'

RSpec.describe MerchantDBService do
  it 'retrieves all merchants' do
    parsed_json = MerchantDBService.merchants

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:data]).to be_a Array

    merchant_data = parsed_json[:data][0]

    expect(merchant_data[:attributes]).to include(:name)
    expect(merchant_data).to include(:id)
    expect(merchant_data[:attributes][:name]).to be_a String
    expect(merchant_data[:id]).to be_a String
  end
end 