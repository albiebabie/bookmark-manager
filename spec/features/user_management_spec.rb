feature 'User sign up' do
  scenario 'requires a matching confirmation password' do
    sign_up
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    expect(current_path).to eq '/users'
    expect(page).to have_content('Password and confirmation password do not match')
  end
end



# xpect(current_path).to eq '/links'
