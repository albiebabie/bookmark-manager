require 'spec_helper.rb'

def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: 'joesweeny84@hotmail.com'
  fill_in :password, with: 'alex1'
  click_button 'Sign Up'
end
