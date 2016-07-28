def sign_up(email: 'jck_catchall@outlook.com',
            password: "1234567",
            password_confirmation: "1234567")
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,   with:  email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign up'
end
