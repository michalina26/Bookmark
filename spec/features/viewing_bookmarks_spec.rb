require 'pg'

feature 'Viewing bookmarks' do
  scenario 'visiting the home page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
  
    Bookmark.create(url: "http://www.google.com", title: 'Google')
    Bookmark.create(url: "http://www.github.com", title: 'GitHub')
    Bookmark.create(url: "http://www.facebook.com", title: 'Facebook')

    visit('/bookmarks')

    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('GitHub', href: 'http://www.github.com')
    expect(page).to have_link('Facebook', href: 'http://www.facebook.com')
  end
end


