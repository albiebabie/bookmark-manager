require 'spec_helper.rb'

feature 'Adding tags' do
  scenario 'adding tags to links' do
    visit 'links/new'
    fill_in 'url', with: 'http://www.kumb.com'
    fill_in 'title', with: 'Knees Up Mother Brown'
    fill_in 'tags', with: 'Football'
    click_button 'Add link'

    link = Link.first
    expect(link.tags.map(&:name)).to include('Football')
  end
end
