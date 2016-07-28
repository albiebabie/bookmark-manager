feature 'User signup' do
  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, jck_catchall@outlook.com')
    expect(User.first.email).to eq('jck_catchall@outlook.com')
  end
end
