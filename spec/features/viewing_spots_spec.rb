require 'spec_helper'

describe 'A user visits the home page', :type => :feature do

  it 'when there are no spots listed' do
    visit '/spots'
    expect(page).to have_content "No spots listed yet!"
  end

end
