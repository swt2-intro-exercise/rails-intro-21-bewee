require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have first_bame, last_name and homepage" do
    author = build :author
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.de/Alan_Turing")
  end
  
  it "should have name" do
    author = build :author
    expect(author.name).to eq("Alan Turing")
  end
end
