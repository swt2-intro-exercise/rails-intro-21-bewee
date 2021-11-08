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
end
