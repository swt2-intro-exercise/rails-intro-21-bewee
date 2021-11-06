require 'rails_helper'

describe "Authors page", type: :feature do
  it "should exist at 'authors_path' and render withour error" do
    visit authors_path
  end

  it "should have a link to add new authors" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end
