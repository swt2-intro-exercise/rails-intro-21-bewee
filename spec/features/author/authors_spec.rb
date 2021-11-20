require 'rails_helper'

describe "Authors page", type: :feature do
  it "should exist at 'authors_path' and render withour error" do
    visit authors_path
  end

  it "should list all authors" do
    @alan = FactoryBot.create :author
    visit authors_path
    Author.all.each do |author| 
      expect(page).to have_content author.name
      expect(page).to have_link 'Show', href: author_path(author)
      expect(page).to have_link 'Edit', href: edit_author_path(author)
      expect(page).to have_link 'Destroy', href: author_path(author)
    end
  end

  it "should have a link to add new authors" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end
