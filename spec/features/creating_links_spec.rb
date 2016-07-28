require 'spec_helper.rb'
# require 'database_cleaner'

feature "Adding links" do

  scenario "I can create a new link" do
    visit '/links/new'
    fill_in 'url', with: 'http://www.bbc.com'
    fill_in 'title', with: 'BBC'
    click_button 'Add link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('BBC')
    end
  end
end
