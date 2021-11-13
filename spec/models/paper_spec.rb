require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should reject invalid values" do
    paper = Paper.new(title: nil, venue: "Mind 49: 433-460", year: 1950)
    expect(paper).to_not be_valid
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: nil, year: 1950)
    expect(paper).to_not be_valid
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: nil)
    expect(paper).to_not be_valid
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: "Toastbrot")
    expect(paper).to_not be_valid
  end
end
