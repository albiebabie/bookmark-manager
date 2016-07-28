feature 'User signup' do
  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, jck_catchall@outlook.com')
    expect(User.first.email).to eq('jck_catchall@outlook.com')
  end

  scenario "returns error message and prevents login unless password confirms" do
    expect { sign_up(password_confirmation: "wrong") }.not_to change(User, :count)
    # expect(page).to have_content('Password mismatch!')
  end
end
