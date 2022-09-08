require 'rails_helper'

RSpec.describe 'Merchants Index Page' do 
  it 'shows a list of merchants by name' do 
    merchants = MerchantDBFacade.merchants

    visit '/merchants'

    expect(page).to have_content(merchants[0].name)
  end

  it 'brings me to the merchant showpage when I click on the merchants name link' do 
    merchants = MerchantDBFacade.merchants
    merchant1 = merchants[0]

    visit '/merchants'

    expect(page).to have_link(merchant1.name)

    click_link(merchant1.name)

    expect(current_path).to eq("/merchants/#{merchant1.id}")
  end
end