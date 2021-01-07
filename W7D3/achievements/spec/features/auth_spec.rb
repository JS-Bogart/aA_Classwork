require 'spec_helper'
require 'rails_helper'

#feature == describe
#scenario == context
#background == before 

feature 'the signup process' do
  scenario 'has a new user page' do
    visit new_user_url
    expect(page).to have_content('Create a new user')
  end

  feature 'signing up a user' do
    background(:each) do
      visit new_user_url
      fill_in 'username', with: 'Erik'
      fill_in 'password', with: '123456'
      click_on 'Create User'
    end
    scenario 'shows username on the homepage after signup' do
      visit users_url
      expect(page).to have_content('Erik')
    end

  end
end

feature 'logging in' do
  scenario 'shows username on the homepage after login'

end

feature 'logging out' do
  scenario 'begins with a logged out state'

  scenario 'doesn\'t show username on the homepage after logout'

end