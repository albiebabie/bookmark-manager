require 'spec_helper.rb'

feature 'filter tags' do
  before do
    Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'search engine')] )
    Link.create(url: 'http://www.generalassembly.com', title: 'General Assembly', tags: [Tag.first_or_create(name: 'education')] )
    Link.create(url: 'http://www.bubblerus.com', title: 'Bubbles R Us', tags: [Tag.first_or_create(name: 'bubbles')] )
    Link.create(url: 'http://www.bubblerus.co.uk', title: 'Bubbles R Us - UK', tags: [Tag.first_or_create(name: 'bubbles')] )
  end

  scenario 'to be able to filter links by single tags' do
    visit '/tags/bubbles'

    expect(page.status_code).to eq(200)

    within 'ul#links' do
      expect(page).to have_content('Bubbles R Us')
      expect(page).to have_content('Bubbles R Us - UK')
      expect(page).not_to have_content('Google')
      expect(page).not_to have_content('General Assembly')
    end
  end
end
