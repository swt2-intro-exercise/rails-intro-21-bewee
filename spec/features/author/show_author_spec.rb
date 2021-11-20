require 'rails_helper'

describe "Show author page", type: :feature do
  it "should exist at 'author_path' and render withour error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
  end
  
  it "should have a link to edit the author", type: :featute do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
  end

  it "should have a link to destroy the author", type: :featute do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_link 'Destroy', href: author_path(@alan)
  end

  it "should destroy the author when the respective link is clicked", type: :featute do
    @alan = FactoryBot.create :author
    author_count = Author.where(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.de/Alan_Turing').count
    visit author_path(@alan)
    page.find('a.destroy').click
    new_author_count = Author.where(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.de/Alan_Turing').count
    expect(new_author_count).to equal(author_count-1)
  end
end
