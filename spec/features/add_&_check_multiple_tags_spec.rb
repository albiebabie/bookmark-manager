feature 'tags' do

  scenario ' add multiple tags to a link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.nasa.com'
    fill_in 'title', with: 'NASA'
    fill_in 'tags', with: 'space education'
    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('space', 'education')
  end
end
