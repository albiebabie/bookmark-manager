feature 'sign up' do
  scenario 'a user can sign up' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome example@example.com')
    expect(User.first.email).to eq('example@example.com')
  end
end




# Write a failing feature test that checks the following:
#
#     when a user signs up, the User count increases by 1
#     the page displays a welcome message to the new user
#     the email address for that user in the database is correct.
