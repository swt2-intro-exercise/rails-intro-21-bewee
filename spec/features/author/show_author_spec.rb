require 'rails_helper'

describe "Show author page", type: :feature do
  it "should exist at 'author_path' and render withour error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text('')
  end
end
