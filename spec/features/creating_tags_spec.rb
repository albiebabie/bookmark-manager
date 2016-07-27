feature '#tags' do
  scenario "adds tags to the links in the bookmark manager" do
    visit '/links'
    click_link('new_link')
    fill_in :url, with: 'bbc.com'
    fill_in :title, with: 'bbc'
    fill_in :tags, with: 'news'
    click_button('submit')
    link = Link.first
    expect(link.tags.map(&:name)).to include('news')
  end
  scenario 'user can add multiple tags' do
    visit '/links'
    click_link('new_link')
    fill_in :url, with: 'bbc.com'
    fill_in :title, with: 'bbc'
    fill_in :tags, with: 'news media'
    click_button('submit')
    link = Link.first
    expect(link.tags.map(&:name)).to include('news', 'media')
  end
end
