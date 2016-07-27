def sign_up
  visit '/users/new'
  fill_in :user_email, with: 'example@example.com'
  fill_in :password, with: 'password'
  click_button('submit')
end
