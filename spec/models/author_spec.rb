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
  
  it "should reject invalid values" do
    author = Author.new(first_name: nil, last_name: "Turing", homepage: "http://wikipedia.de/Alan_Turing")
    expect(author).to_not be_valid
    author = Author.new(first_name: "A", last_name: "Turing", homepage: "http://wikipedia.de/Alan_Turing")
    expect(author).to_not be_valid
  end

  it "should accept valid values" do
    author = build :author
    expect(author).to be_valid
  end
end
