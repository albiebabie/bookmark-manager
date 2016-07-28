#require 'spec_helper.rb'

feature 'Add a tag to a link' do

  scenario 'you can add a tag to a link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.bbc.com'
    fill_in 'title', with: 'BBC'
    fill_in 'tags', with: 'news'

    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('news')
  end
end
