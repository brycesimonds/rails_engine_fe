require 'rails_helper'

RSpec.describe 'Merchants Index Page' do 
  it 'shows a list of merchants by name' do 
    merchants = MerchantDBFacade.merchants

    visit '/merchants'

    expect(page).to have_content(merchants[0].name)
  end
end