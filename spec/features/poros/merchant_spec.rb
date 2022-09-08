require 'rails_helper'

RSpec.describe Merchant do

  it "exists and has attributes" do
    data =
    {
      "data": [
          {
              "id": "1",
              "type": "merchant",
              "attributes": {
                  "name": "Schroeder-Jerde"
              }
          } ]
    } 

    merchant = Merchant.new(data)

    expect(merchant.name).to eq("Schroeder-Jerde")
    expect(merchant.id).to eq(1)
  end

end
