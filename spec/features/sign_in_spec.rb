feature 'user sign in' do
  let!(:user) do
    User.create(email: 'dog@dog.com',
                password: 'dog',
                password_confirmation: 'dog')
  end

  scenario 'I can sign in with my correct details' do
    log_in(email: user.email, password: user.password)
    expect(page).to have_content "Welcome, #{user.email}"
  end


end
