feature 'add links' do

  scenario "adds website's link and title to the bookmark manager" do
    visit '/links'
    click_link('new_link')
      fill_in :url, with: 'bbc.com'
      fill_in :title, with: 'bbc'
    click_button('submit')
    within('ul#links') do
      expect(page).to have_content('bbc')
    end
  end
end
