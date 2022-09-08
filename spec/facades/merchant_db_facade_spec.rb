require 'rails_helper'

RSpec.describe MerchantDBFacade do
  it 'returns an array of objects' do
    array_of_merchant_objects = MerchantDBFacade.merchants

    expect(array_of_merchant_objects).to be_a Array
    expect(array_of_merchant_objects).to be_all Merchant
  end
end 