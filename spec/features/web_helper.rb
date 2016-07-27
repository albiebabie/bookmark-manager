def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :user_email, with: 'example@example.com'
  fill_in :password, with: 'password'
  click_button('sign up')
end
