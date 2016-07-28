feature 'Adding a user' do
  scenario 'adds new user and increases user count by 1' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content 'Welcome, albie@albie.com'
    expect(User.first.email).to eq('albie@albie.com')
  end
end
