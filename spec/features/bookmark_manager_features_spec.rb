
feature '#viewing_links' do
  scenario 'user views link on homepage' do
    Link.create(title: 'google', url: 'www.google.com' )

    visit '/links'
    expect(page.status_code).to eq 200

    within('ul#links') do
      expect(page).to have_content 'google'
    end
  end
  scenario 'user can view links by tags' do
    Link.create(title: 'bbc', url: 'www.bbc.co.uk', tags: [Tag.first_or_create(name: 'news')])
    Link.create(title: 'bubbles', url: 'www.bubbles.co.uk', tags: [Tag.first_or_create(name: 'bubbles')])
    visit '/tags/bubbles'
    within 'ul#links' do
      expect(page).to have_content('bubbles')
      expect(page).not_to have_content('bbc')
    end
  end
end
