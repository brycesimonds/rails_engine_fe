require 'rails_helper'

RSpec.describe 'Merchants Index Page' do 
  it 'shows a list of merchants by name' do 
    merchant = MerchantDBFacade.merchant(1)
    visit '/merchants'

    expect(page).to have_content(merchant.name)
  end
end